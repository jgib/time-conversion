sub sec_to_time{
        $time= $_[0];
        $hour = 0;
        $min = 0;
        $sec = 0;
        if($time >= 3600){
                $hour = int($time/3600);
                $time = $time - ($hour * 3600);
        }
        if($time < 3600 && $time >= 60){
                $min = int($time/60);
                $time = $time - ($min * 60);
        }
        if($time < 60 && $time >= 0){
                $sec = int($time);
        }
        if($hour < 10){
                $hour = "0$hour";
        }
        if($min < 10){
                $min = "0$min";
        }
        if($sec < 10){
                $sec = "0$sec";
        }
        return "$hour:$min:$sec";
}


sub time_to_sec{
        $time = $_[0];
        if($time =~ m/^(\d{2}):(\d{2}):(\d{2})$/){
                $hour = $1;
                $min = $2;
                $sec = $3;
        }
        return $hour*3600+$min*60+$sec;
}
