Vim�UnDo� Y�g��T��u	a�RCyxeI��[�n��C�I�      ,            field_content = True if pdf_data      ,      0       0   0   0    d�:    _�                     
       ����                                                                                                                                                                                                                                                                                                                                                 v       d�`     �   
                �   
          5��    
                      �                      �    
                     �                      �    
                 	   �              	       �    
          	          �       	              �    
                 !   �              !       �    
                  
   �              
       �    
           
          �       
              �    
                  
   �              
       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       d�~     �   
            +    pdf_data = process_pdf_data(dictionary)5��    
           
           �       
               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       d�     �             5��                          �                      �                          �                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 v       d��     �      	         !    dictionary = pdf.get_fields()5��              
          �       
              �                        �                     5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                 v       d��     �   	                print(dictionary)5��    	   
       
          �       
              �    	   
                 �                     �    	   
                 �                     �    	   
                 �                     �    	                     �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       d��     �   
            !    pdf_data = process_pdf_data()5��    
                                           �    
   #                                      �                                               �                                                 �    
   #                                       �    
                                         �    
                                         �    
                                         5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       d��     �                  �               5��                          %                     �                          %                     �                        :                    5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                 v       d��     �                     for field in pdf_data�                 def process_pdf_data(pdf_data)5��                         C                     �                         D                     �                          E                     �                        V                    �                        V                    �                     	   V             	       �                        _                     �                         `                    �                          `                     5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                 v       d��     �                   �             5��                          E                     �                       	   E              	       �                        I                    �                        X                    5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                 v       d��     �                       �             5��                          x                     �                         x                    5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                 v       d�    �                  5��                          �                     �                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d��     �                       value = 5��                         �                     �                         �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�.     �                       field_name = 5��                         �                     �                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�]     �             5��                          E                     �                          E                     �                          E                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�`     �                 5��                          E                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�`     �                �                   �             �             5��                          ]                     �                         a                     �                          b                     �                          b                     �                         a                     �                         a                     �                        a                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d��     �                   with open('')�             5��                      $   l              $       5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             d�     �                       �             �               5    with open('resources/fields_id_map_reverse.json')5��       5               	   �              	       �       >                 �                     �                      #   �             #       �                         k                     �                         l                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�     �               ?    with open(''resources/fields_id_map_reverse.json') as file:5��                         l                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d�     �               #        data = json.load(json_file)5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d��     �                       field_name = 5��                         �                     5�_�                       "    ����                                                                                                                                                                                                                                                                                                                                                             d��     �               ,        fields_id_map = json.load(json_file)5��       "       	          �      	              5�_�                       %    ����                                                                                                                                                                                                                                                                                                                                                             d��     �                       �             5��                          	              	       �                                              5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             d��     �                        field_content = pdf_data5��                         (                     �                        !                    �                        !                    �                     
   !             
       5�_�                       #    ����                                                                                                                                                                                                                                                                                                                                                             d�     �               #        field_content = pdf_data[]a5��       "                  +                     5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             d�     �               "        field_content = pdf_data[]5��       !                  *                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             d�     �               '        field_content = pdf_data[field]�             5��       '                  0                     5�_�                       1    ����                                                                                                                                                                                                                                                                                                                                                             d�#     �               3        field_content = pdf_data[field].get(""/V"")5��       1                  :                     5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                                                             d�$     �               2        field_content = pdf_data[field].get(""/V")5��       ,                  5                     5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             d�F     �               1        field_content = pdf_data[field].get("/V")5��       0                  9                     5�_�                        2    ����                                                                                                                                                                                                                                                                                                                                                             d�L     �                       �             5��                          ?              	       �                         G                     �                        G                    �                        G                    �                        G                    5�_�      !                  "    ����                                                                                                                                                                                                                                                                                                                                                             d�S     �               "        sanitized_data[field_name]5��       "                  a                     5�_�       "           !      1    ����                                                                                                                                                                                                                                                                                                                                                             d�Y     �                   return sanitized_data�                       �             5��                          r              	       �                          r                     �                         r              	       �                        w                    �                        ~                    �                        ~                    �                        ~                    5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             d�^     �                 5��                          r                     5�_�   "   $           #   	       ����                                                                                                                                                                                                                                                                                                                            
          	          V       d�d     �      	              print("Dict:")       print(pdf_fields_data)5��                          �       .               5�_�   #   %           $   	       ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�e     �   	          5��    	                      �                      �    	                      �                      5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�p     �                   return "ok"5��                         �                      5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�q     �                   return 5��                         �                      5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�s    �   
              5��    
                      �                      5�_�   '   )           (          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d��     �               >    with open('resources/fields_id_map_reverse.json') as file:5��                         B                     5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d��    �                   sanitized_data = {}5��                         2                     �                         3                     5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�     �                       �             5��                          �              	       �                      
   �              
       5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�     �                       if "text_"5��                      
   �              
       5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�     �               5        field_content = pdf_data[field].get("/V", "")5��                         	                     5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�     �               ,            field_content = True if pdf_data�                           �             5��                          ;                     �                        C                    �                        H              	       �                      (   I             (       �       (                 q                     �                          r                     �       (                  q                     �       $                 m                    �       $                 m                    �       $                 m                    5�_�   -   /           .      3    ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�,     �               3            field_content = True if pdf_data[field]5��       3               
   |              
       5�_�   .   0           /      <    ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�7     �               =            field_content = True if pdf_data[field].get("/V")5��       <                  �                     5�_�   /               0      A    ����                                                                                                                                                                                                                                                                                                                            	          	          V       d�9    �               A            field_content = True if pdf_data[field].get("/V", "")5��       A                  �                     5��