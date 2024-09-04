#ifndef MUSICPLAYER_H
#define MUSICPLAYER_H

#include <QObject>
#include <QMediaPlayer>
#include <QAudioOutput>
#include <QFileInfo>
#include <QDebug>
// #include <taglib/fileref.h>
// #include <taglib/tag.h>

class MusicPlayer : public QObject
{
    Q_OBJECT
public:
    explicit MusicPlayer(QObject *parent = nullptr);

    Q_INVOKABLE void play(const QString &url);
    Q_INVOKABLE void pause();
    Q_INVOKABLE void stop();
    Q_INVOKABLE void resume();
    Q_INVOKABLE QMediaPlayer::PlaybackState getStatus();
    Q_INVOKABLE qint64 getCurrentTime();
    Q_INVOKABLE qint64 getDuration();
    Q_INVOKABLE float getVolume();
    Q_INVOKABLE void setVolume(float volume);
    Q_INVOKABLE void setCurrentTime(qint64 time);
    Q_INVOKABLE QString getName();
    Q_INVOKABLE QString getArtist();

private:
    QMediaPlayer *m_player;
    QAudioOutput *m_audioOutput;
    QString m_songName;
    QString m_artistName;
};

#endif // MUSICPLAYER_H
