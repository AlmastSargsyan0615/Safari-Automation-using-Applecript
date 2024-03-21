<?php
exec('touch ~/test/main.txt');
	   $filename = 'deviceID.json';
       $deviceId = $_POST['device_id'];
	   $currentLocaltime =  date('Y-m-d H:i:s');
		if($deviceId) {
        	$arrayData = array();
          if(file_exists($filename)) {
            $data = file_get_contents($filename);
            preg_match_all('/"([^"]+)"\s*:\s*"([^"]+)"/', $data, $matches);
            
            for ($i = 0; $i < count($matches[1]); $i++) {
              $key = $matches[1][$i];
              $value = $matches[2][$i];
              $arrayData[$key] = $value;
            }
          }
          if(!$arrayData[$deviceId]) {
              $to1 = 'lchronicle@gmail.com';
              $to2 = 'almastsargsyan87@gmail.com';
              $subject = 'New Internet Connection';
              $message = ''. $deviceId . ' has connected right now.';
              $headers = 'From: contactus@multimediaposter.com' . "\r\n" .
                          'Reply-To: contactus@multimediaposter.com' . "\r\n" .
                          'X-Mailer: PHP/' . phpversion();
              if (mail($to1, $subject, $message, $headers)) {
              	echo 'Email sent successfully';
              } else {
              	echo 'Email sent failed';
              }
              if (mail($to2, $subject, $message, $headers)) {
              	echo 'Email sent successfully';
              } else {
              	echo 'Email sent failed';
              }
          }
          $arrayData[$deviceId] = $currentLocaltime;
          $jsonString = '{';
            
          foreach($arrayData as $deviceId => $localtime) {
           	$jsonString .= '"' . $deviceId . '":"' . $localtime . '",';
          }
          $jsonString = rtrim($jsonString, ',');
       	  $jsonString .= '}';
          
          $fileHandle = fopen($filename, 'w');
          fwrite($fileHandle, $jsonString);
          fclose($fileHandle);
          
        } 
        
        if(file_exists($filename)) {
          $data = file_get_contents($filename);
          preg_match_all('/"([^"]+)"\s*:\s*"([^"]+)"/', $data, $matches);
          $arrayData = array();
          for ($i = 0; $i < count($matches[1]); $i++) {
            $key = $matches[1][$i];
            $value = $matches[2][$i];
            $arrayData[$key] = $value;
          }

          $jsonString = '{';

          foreach($arrayData as $deviceId => $localtime) {
            $localtimeTimestamp = strtotime($localtime);
            $currentLocaltimestamp = strtotime($currentLocaltime);
            $timedifference = $currentLocaltimestamp - $localtimeTimestamp;
            if($timedifference <= 300) {
            	$jsonString .= '"' . $deviceId . '":"' . $localtime . '",';
            } else {
              $to1 = 'lchronicle@gmail.com';
              $to2 = 'almastsargsyan87@gmail.com';
              $subject = 'Internet Connection Failed';
              $message = ''. $deviceId . ' has not been connected for more than 5 minutes.';
              $headers = 'From: contactus@multimediaposter.com' . "\r\n" .
                          'Reply-To: contactus@multimediaposter.com' . "\r\n" .
                          'X-Mailer: PHP/' . phpversion();
              if (mail($to1, $subject, $message, $headers)) {
              	echo 'Email sent successfully';
              } else {
              	echo 'Email sent failed';
              }
              if (mail($to2, $subject, $message, $headers)) {
              	echo 'Email sent successfully';
              } else {
              	echo 'Email sent failed';
              }
            }
          }

          $jsonString = rtrim($jsonString, ',');
          $jsonString .= '}';

          $fileHandle = fopen($filename, 'w');
          fwrite($fileHandle, $jsonString);
          fclose($fileHandle);
       }
?>