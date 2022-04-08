abstract class Player{
  int timeline, currentTime = 0;
  int get leftTime => timeline - currentTime;
  Player(this.timeline);

  void play();
  void pause();
  void stop();
}

class Ifile{
  void open() => print('открываю файл');
  void save() => print('сохраняю файл');
  void saveAs() => print('сохраняю файл под именем');
  void close() => print('закрываю файл');
}

mixin Social{
  int likes = 0, comments = 0;

  void like(String username){
    likes += 1;
    print('понравилось $username');
  }

  void comment(String message){
    comments += 1;
    print('комментарий опубликован');
  }
  void share() => print('ссылка для отправки скопирована');
}

class AudioPlayer extends Player implements Ifile{
  AudioPlayer(int timeline) : super(timeline);

  @override
  void play() => print('музыка играет');

  @override
  void pause() => print('музыка на паузе');

  @override
  void stop() => print('музыка остановлена');

  @override
  void open() => print('открываю аудиофайл');

  @override
  void save() => print('сохраняю аудиофайл');

  @override
  void saveAs() => print('сохраняю под именем');

  @override
  void close() => print('закрываю аудиофайл');
}

class VideoPlayer extends Player with Social implements Ifile {
  VideoPlayer(int timeline) : super(timeline);


  @override
  void play() => print('видео играет');

  @override
  void pause() => print('видео на паузе');

  @override
  void stop() => print('видео остановлено');

  @override
  void open() => print('открываю видео');

  @override
  void save() => print('сохраняю видео');

  @override
  void saveAs() => print('сохраняю видео под именем');

  @override
  void close() => print('закрываю видео');
}

void main(){
  AudioPlayer yaMusic = AudioPlayer(60);
  yaMusic.play();
  yaMusic.currentTime = 21;
  print(yaMusic.leftTime);
  yaMusic.stop();

  VideoPlayer youTube = VideoPlayer(360);
  for(int i = 0; i < 100; i+=1){
    youTube.like('Anifa');
  }
  print(youTube.likes);
}