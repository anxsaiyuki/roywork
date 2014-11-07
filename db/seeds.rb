# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create( title_en: "mommycare", title_ch: "媽咪照護", content: " <h1 class='title'>媽咪照護</h1><hr><br><br> <ul>馥御產後護理之家提供產後至滿月的媽媽照護，包括傷口護理，乳房護理，<br>母乳哺餵，餐食提供，營養指導與新生兒照護指導等等。<br><br> 特聘資深婦產科專科醫師定期巡診及專業照護。<br> 特聘資深瑜珈老師授課，指導媽媽產後骨盆運動，調整體態，快樂迎接新生命到來。<br> </ul>" )

Category.create( title_en: "reservation", title_ch: "預約參觀", content: " <h1 class='title'>預約參觀</h1><hr><br><br> <p class='descriptions'>捷運忠孝敦化站2號出口步行3分鐘即可到達<br> 地址: 10690 台北市大安區忠孝東路4段221號9樓<br> 連絡電話: 02-877-16-877<br> </p> <iframe src='https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d903.6926775176697!2d121.55235164534935!3d25.04185424725029!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442abc5c62b1c13%3A0xb474aaf69240c8c6!2zTm8uIDIyMSwgU2VjdGlvbiA0LCBaaG9uZ3hpYW8gRWFzdCBSZCwg5b6u6aKo5b-g5a2d6aSoIERhYW4gRGlzdHJpY3QsIFRhaXBlaSBDaXR5LCAxMDY!5e0!3m2!1sen!2stw!4v1412059684696' width='600' height='450' frameborder='0' style='border:0'></iframe>" )

Category.create( title_en: "links", title_ch: "相關連結", content: " <h1 class='title'>相關連結</h1><hr><br><br> <a href='http://www.facebook.com/foryu221' target='_blank'> <img src='/assets/img/logo_400x120.png'>Facebook 粉絲團 </a>" )




