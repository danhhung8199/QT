#include "MusicPlayer.h"

MusicPlayer::MusicPlayer(QObject *parent)
    : QObject(parent),
    m_player(new QMediaPlayer(this)),
    m_audioOutput(new QAudioOutput(this))
{
    m_player->setAudioOutput(m_audioOutput);

}

void MusicPlayer::play(const QString &url)
{
    QFileInfo fileInfo(url);

    if (!fileInfo.exists()) {
        qDebug() << "File does not exist:" << url;
        return;
    }

    //  metadata TagLib
    TagLib::FileRef file(url.toStdString().c_str());
    if (!file.isNull() && file.tag()) {
        m_artistName = QString::fromUtf8(file.tag()->artist().toCString(true));
        if (m_artistName.isEmpty()) {
            m_artistName = "Unknown Artist";
        }
        m_songName = QString::fromUtf8(file.tag()->title().toCString(true));
        if (m_songName.isEmpty()) {
            m_songName = fileInfo.baseName();
        }
    } else {
        m_artistName = "Unknown Artist";
        m_songName = fileInfo.baseName();
    }

    qDebug() << "Playing file:" << url;
    m_player->setSource(QUrl::fromLocalFile(url));
    m_player->play();
}

void MusicPlayer::pause()
{
    qDebug() << "Pausing music";
    m_player->pause();
}

void MusicPlayer::stop()
{
    qDebug() << "Stopping music";
    m_player->stop();
}

void MusicPlayer::resume()
{
    if (m_player->playbackState() == QMediaPlayer::PausedState) {
        qDebug() << "Resuming music";
        m_player->play();
    } else {
        qDebug() << "Cannot resume, player is not in paused state";
    }
}

QMediaPlayer::PlaybackState MusicPlayer::getStatus()
{
    return m_player->playbackState();
}

qint64 MusicPlayer::getCurrentTime()
{
    return m_player->position();
}

qint64 MusicPlayer::getDuration()
{
    return m_player->duration();
}

float MusicPlayer::getVolume()
{
    return m_audioOutput->volume();
}

void MusicPlayer::setVolume(float volume)
{
    if((volume<0.0f)||(volume>1.0f)) {
        qDebug() << "Volume out of range:" << volume;
        return;
    }

    qDebug() << "Setting volume to:" << volume;
    m_audioOutput->setVolume(volume);
}

void MusicPlayer::setCurrentTime(qint64 time)
{
    if (time >= 0 && time <= m_player->duration()) {
        m_player->setPosition(time);
        qDebug() << "Setting current time to:" << time;
    } else {
        qDebug() << "Invalid time value:" << time;
    }
}

QString MusicPlayer::getName()
{
    return m_songName;
}

QString MusicPlayer::getArtist()
{
    return m_artistName;
}
