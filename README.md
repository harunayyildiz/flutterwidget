
# Image Slider
Merhaba Flutter Geliştiricileri,sizlerle bir mobil uygulamanın olmazsa olmazı ImageSliderı anlatıcağım.Öncelikle konuya biraz hakim olabilmeniz adına kısa bir tanıtım ile başlamak istiyorum.Herhangi bir mobil uygulama indirdiniz ve karşınıza tanıtım amaçlı birkaç Slider elemanı çıkıyor bu yapı geliştiricilere göre değişir istenirse ilk yüklenmede tanıtım amaçlı istenirse her defasında çalışan bir Slider tasarımı yapabilirsiniz.Kesinlikle uygulamanızı kaliteli gösteren bir parça.Daha da derine inersek ekrana ilk gelen veya Tasarladığınız Slider yapısı resimlerden olabileceği gibi Scaffold widgetınızın Body kısmı da olabilir.Resim yazı vs. geliştiriciye kalmış bir durum.
Oluşturduğunuz yapılarda index değerine göre de işlem yapabileceğimize değinmek istedim.Sadece ufak bir algoritma.
İlk etapta sadece resimleri barındıran bir Slider yapalım.Resimleri internet sitesinden çekip koymayı tercih ettim.Sizin tercihleriniz arasında --assets klasörüne eklemek var ise sadece küçük bir yapıya müdahale edebilirsiniz.Burdaki önemli kısım yapınızı StatefullClass'ı ile yapmak olucaktır.Çünkü programın herhangi bir yerinde yaptığınız değişiklikte etkilenecek başka bir widget veya yapınız olabilir.
  <table>
      <tr>
         <td>
       
- [ImageSlider](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/ImageSlider.dart)
<br>
<a href="https://imgflip.com/gif/3op6ub"><img src="https://i.imgflip.com/3op6ub.gif" title="made at imgflip.com"/></a>
        </td>
         <td>
  
  - [ImageSlider2](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/ImageSlider2.dart)
  <br>
<a href="https://imgflip.com/gif/3op76i"><img src="https://i.imgflip.com/3op76i.gif" title="made at imgflip.com"/></a>
        </td>
      </tr>
   </table>

<h1>Bottom NavigationBar</h1>
<br>
Bu bölümde BottomNavigationBar ile Scaffoldumuzun Body Kısmını değiştirecek bir yapı hazırladım.Bazı mobil uygulamalarda AppBar kısmı sabit kalabilmelidir.Çünkü her sayfa için aynıdır ve kullanıcağımız widget sayısını da indirgemiş oluyoruz.Tabiki bu durumu farklı yapılar kullanarak da yapabilirsiniz.TabBar da buna bir örnek olabilir.Daha çok animasyonlu olanlar tercih edilse de basit bir algoritmayı da göz önünde tutmak gerekiyor.
  <table>
      <tr>
         <td>
       
- [BottomNavigationBar](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/BottomNavigation/BottomNavigation.dart)
<br>
<a href="https://imgflip.com/gif/3op7d8"><img src="https://i.imgflip.com/3op7d8.gif" title="made at imgflip.com"/></a>
        </td>
         <td>
  
- [BottomNavigationBar2](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/BottomNavigation/BottomNavigationBar2.dart)
  <br>
  <br>
<a href="https://imgflip.com/gif/3op7of"><img src="https://i.imgflip.com/3op7of.gif" title="made at imgflip.com"/></a>
        </td>
      </tr>
   </table>
<h1>ListView Listile ve List.generate Kullanımı</h1>
  <table>
      <tr>
         <td>
       
- [List Generate](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/Liste/ListeYapisi.dart)
<br>
<a href="https://imgflip.com/gif/3op815"><img src="https://i.imgflip.com/3op815.gif" title="made at imgflip.com"/></a>
        </td>
         <td>
  
- [List Separeted](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/Liste/ListeYapisi2.dart)
<br>
<a href="https://imgflip.com/gif/3op85a"><img src="https://i.imgflip.com/3op85a.gif" title="made at imgflip.com"/></a>
        </td>
      </tr>
   </table>
 <h1>GridView- GridView.builder kullanımı</h1>
   <table>
      <tr>
         <td>
       
- [GridView](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/GridView.dart)
<br>
<a href="https://imgflip.com/gif/3op8zg"><img src="https://i.imgflip.com/3op8zg.gif" title="made at imgflip.com"/></a>
        </td>
         <td>
  
  - [GridView.Builder](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/GridView2.dart)
  <br>
<a href="https://imgflip.com/gif/3op96p"><img src="https://i.imgflip.com/3op96p.gif" title="made at imgflip.com"/></a>
        </td>
      </tr>
   </table>
   
   
   
   

<h1> Basit Widgetlar </h1>
   <table>
      <tr>
         <td>
       
- [Slider](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/Slider.dart)
<br>
<a href="https://imgflip.com/gif/3opgxc"><img src="https://i.imgflip.com/3opgxc.gif" title="made at imgflip.com"/></a>
        </td>
         <td>
  
- [RadioListTile](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/RadioList.dart)
  <br>
<a href="https://imgflip.com/gif/3oph25"><img src="https://i.imgflip.com/3oph25.gif" title="made at imgflip.com"/></a>
        </td>
      </tr>
       <tr>
       <td>
- [CheckBox](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/Checkbox.dart)
<br>
<a href="https://imgflip.com/gif/3oph5n"><img src="https://i.imgflip.com/3oph5n.gif" title="made at imgflip.com"/></a>
        </td>
         <td>
           
           - [SwitchListTile](https://github.com/harunayyildiz/flutterwidget/blob/master/lib/SwitchListTile.dart)
  <br>
<a href="https://imgflip.com/gif/3oph94"><img src="https://i.imgflip.com/3oph94.gif" title="made at imgflip.com"/></a>
        </td>
      </tr>
   </table>
