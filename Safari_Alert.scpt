FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	   Get the system's UUID    
 �   ,   G e t   t h e   s y s t e m ' s   U U I D      l     ����  r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   � s y s t e m _ p r o f i l e r   S P H a r d w a r e D a t a T y p e   |   a w k   ' / H a r d w a r e   U U I D : /   {   p r i n t   $ 3   } '��    o      ���� 0 uuidinfo uuidInfo��  ��        l    ����  r        c        n        2  	 ��
�� 
cpar  o    	���� 0 uuidinfo uuidInfo  m    ��
�� 
TEXT  o      ���� 0 
systemuuid 
systemUUID��  ��        l     ��������  ��  ��         l     �� ! "��   ! * $ Display dialog with the system UUID    " � # # H   D i s p l a y   d i a l o g   w i t h   t h e   s y s t e m   U U I D    $ % $ l     �� & '��   & 1 +display dialog "System UUID: " & systemUUID    ' � ( ( V d i s p l a y   d i a l o g   " S y s t e m   U U I D :   "   &   s y s t e m U U I D %  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - "  Get screen width and height    . � / / 8   G e t   s c r e e n   w i d t h   a n d   h e i g h t ,  0 1 0 l    2���� 2 r     3 4 3 I   �� 5��
�� .sysoexecTEXT���     TEXT 5 m     6 6 � 7 7 � s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e   |   g r e p   R e s o l u t i o n   |   a w k   ' { p r i n t   $ 2 ,   $ 4 } '��   4 o      ����  0 resolutioninfo resolutionInfo��  ��   1  8 9 8 l   * :���� : r    * ; < ; n     = > = 2   ��
�� 
cwor > o    ����  0 resolutioninfo resolutionInfo < J       ? ?  @ A @ o      ���� 0 screenwidth screenWidth A  B�� B o      ���� 0 screenheight screenHeight��  ��  ��   9  C D C l     ��������  ��  ��   D  E F E l     �� G H��   G   Main script    H � I I    M a i n   s c r i p t F  J K J l  + . L���� L r   + . M N M m   + , O O � P P F h t t p s : / / m p a e v u m . c o m / w r c r i n k s c h e d u l e N o      ���� 0 	targeturl 	targetURL��  ��   K  Q R Q l     ��������  ��  ��   R  S T S l  / � U���� U O   / � V W V k   3 � X X  Y Z Y I  3 8������
�� .miscactvnull��� ��� null��  ��   Z  [ \ [ I  9 >�� ]��
�� .GURLGURLnull��� ��� TEXT ] o   9 :���� 0 	targeturl 	targetURL��   \  ^ _ ^ l  ? ?��������  ��  ��   _  ` a ` l  ? ?��������  ��  ��   a  b c b l  ? D d e f d I  ? D�� g��
�� .sysodelanull��� ��� nmbr g m   ? @���� ��   e $  Adjust the delay if necessary    f � h h <   A d j u s t   t h e   d e l a y   i f   n e c e s s a r y c  i j i r   E Q k l k m   E F����  l n       m n m 1   L P��
�� 
pidx n 4   F L�� o
�� 
cwin o m   J K����  j  p q p O  R  r s r I  X ~�� t��
�� .prcsclicnull��� ��� uiel t n   X z u v u 4   s z�� w
�� 
menI w m   v y x x � y y " E n t e r   F u l l   S c r e e n v n   X s z { z 4   l s�� |
�� 
menE | m   o r } } � ~ ~  V i e w { n   X l  �  4   e l�� �
�� 
mbri � m   h k � � � � �  V i e w � n   X e � � � 4   ` e�� �
�� 
mbar � m   c d����  � 4   X `�� �
�� 
pcap � m   \ _ � � � � �  S a f a r i��   s m   R U � ��                                                                                  sevs  alis    \  Macintosh HD               �l�BD ����System Events.app                                              �����l�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   q  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  ��� � r   � � � � � J   � � � �  � � � m   � �����   �  � � � m   � �����   �  � � � c   � � � � � o   � ����� 0 screenwidth screenWidth � m   � ���
�� 
nmbr �  ��� � c   � � � � � o   � ����� 0 screenheight screenHeight � m   � ���
�� 
nmbr��   � n       � � � 1   � ���
�� 
pbnd � 4  � ��� �
�� 
cwin � m   � ����� ��   W m   / 0 � ��                                                                                  sfri  alis    p  Preboot                    ����BD ����
Safari.app                                                     �����Y�        ����  
 cu             Applications  F/:System:Volumes:Preboot:Cryptexes:App:System:Applications:Safari.app/   
 S a f a r i . a p p    P r e b o o t  -/Cryptexes/App/System/Applications/Safari.app   /System/Volumes/Preboot ��  ��  ��   T  � � � l     ��������  ��  ��   �  � � � l  � ����� � T   � � � k   � � �  � � � l  � ��� � ���   �    Check internet connection    � � � � 4   C h e c k   i n t e r n e t   c o n n e c t i o n �  � � � Z   � � ����� � I   � ��������� *0 isinternetconnected isInternetConnected��  ��   � Q   � � ��� � k   � � � �  � � � O   � � � � � k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  � � � l  � � � � � � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� ��   � $  Adjust the delay if necessary    � � � � <   A d j u s t   t h e   d e l a y   i f   n e c e s s a r y �  ��� � r   � � � � � m   � �����  � n       � � � 1   � ���
�� 
pidx � 4   � ��� �
�� 
cwin � m   � ����� ��   � m   � � � ��                                                                                  sfri  alis    p  Preboot                    ����BD ����
Safari.app                                                     �����Y�        ����  
 cu             Applications  F/:System:Volumes:Preboot:Cryptexes:App:System:Applications:Safari.app/   
 S a f a r i . a p p    P r e b o o t  -/Cryptexes/App/System/Applications/Safari.app   /System/Volumes/Preboot ��   �  ��� � O  � � � � � I  � ��� ���
�� .prcsclicnull��� ��� uiel � n   � � � � � 4   � ��� �
�� 
menI � m   � � � � � � �  R e l o a d   P a g e � n   � � � � � 4   � ��� �
�� 
menE � m   � � � � � � �  V i e w � n   � � � � � 4   � ��� �
�� 
mbri � m   � � � � � � �  V i e w � n   � � � � � 4   � ��� �
�� 
mbar � m   � �����  � 4   � ��� �
�� 
pcap � m   � � � � � � �  S a f a r i��   � m   � � � ��                                                                                  sevs  alis    \  Macintosh HD               �l�BD ����System Events.app                                              �����l�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   �  � � � l ��~�}�  �~  �}   �  ��| � l  � � � � I �{ ��z
�{ .sysodelanull��� ��� nmbr � m  	�y�y,�z   �   Wait for 300 seconds    � � � � *   W a i t   f o r   3 0 0   s e c o n d s�|  ��  ��   �  � � � l     �x�w�v�x  �w  �v   �  � � � l     �u � ��u   � , & Function to check internet connection    � � � � L   F u n c t i o n   t o   c h e c k   i n t e r n e t   c o n n e c t i o n �  � � � i      � � � I      �t�s�r�t *0 isinternetconnected isInternetConnected�s  �r   � Q      � � � � k     � �  � � � I   �q ��p
�q .sysoexecTEXT���     TEXT � m     � � � � � ( p i n g   - c   1   g o o g l e . c o m�p   �  �o  L   	  l  	 �n�m E   	  1   	 
�l
�l 
rslt m   
  � * 1   p a c k e t s   t r a n s m i t t e d�n  �m  �o   � R      �k�j�i
�k .ascrerr ****      � ****�j  �i   � L     m    �h
�h boovfals � �g l     �f�e�d�f  �e  �d  �g       �c	
�c  	 �b�a�b *0 isinternetconnected isInternetConnected
�a .aevtoappnull  �   � ****
 �` ��_�^�]�` *0 isinternetconnected isInternetConnected�_  �^      ��\�[�Z�Y
�\ .sysoexecTEXT���     TEXT
�[ 
rslt�Z  �Y  �]  �j O��W 	X  f �X�W�V�U
�X .aevtoappnull  �   � **** k          0  8  J  S  ��T�T  �W  �V     * �S�R�Q�P�O 6�N�M�L�K�J O�I ��H�G�F�E�D ��C ��B�A ��@ }�? x�>�=�<�;�: � � � ��9�8�7
�S .sysoexecTEXT���     TEXT�R 0 uuidinfo uuidInfo
�Q 
cpar
�P 
TEXT�O 0 
systemuuid 
systemUUID�N  0 resolutioninfo resolutionInfo
�M 
cwor
�L 
cobj�K 0 screenwidth screenWidth�J 0 screenheight screenHeight�I 0 	targeturl 	targetURL
�H .miscactvnull��� ��� null
�G .GURLGURLnull��� ��� TEXT
�F .sysodelanull��� ��� nmbr
�E 
cwin
�D 
pidx
�C 
pcap
�B 
mbar
�A 
mbri
�@ 
menE
�? 
menI
�> .prcsclicnull��� ��� uiel
�= 
nmbr�< 
�; 
pbnd�: *0 isinternetconnected isInternetConnected�9  �8  �7,�U�j E�O��-�&E�O�j E�O��-E[�k/E�Z[�l/E�ZO�E�O� j*j O�j Okj Ok*a k/a ,FOa  (*a a /a k/a a /a a /a a /j UOjj�a &�a &a  v*a k/a !,FUO thZ*j+ " \ P� *j Okj Ok*a k/a ,FUOa  (*a a #/a k/a a $/a a %/a a &/j UW X ' (hY hOa )j [OY�� ascr  ��ޭ