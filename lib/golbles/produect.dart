int selectedIndex=0;
int total=0;
int qty=0;
double amount=0;
double totalAll=0;

int member=0;
int index=0;
List likeList=[

];

List product1=[

  {
    'price':152,
     'member':1,
    'img':'assets/images/pro17.webp',
    'decropction':' Gray Tone Queens Cut',
    'line':'Classique Designer Jewellery  Mother Of Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'22.74g',
    'Height':'Height',
    'mem':'4 mm',
    'Length':'Length',
    'inch':'15 inches',
    'details':'Design Style: Diamond jewelry can be designed in \nvarious styles, from classic and traditional to modern and trendy.\n Consider the wearer’s preferences and lifestyle when choosing a design.'


  },
  {
    'price':180,
    'member':1,
    'img':'assets/images/pro17.jpg',
    'decropction':' Gray Tone Queens Chacker set',
    'line':'Classique Designer Jewellery   Pearl Jewel Set.',
    'star':'⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'22.50g',
    'Height':'Height',
    'mem':'3.5 mm',
    'Length':'Length',
    'inch':'12 inches',
    'details':'Diamond Solitaire Pendant: This style features a \nsingle diamond suspended from a chain. The diamond can be\n set in a variety of ways, such as prong-set or bezel-set.'

  },

  {
    'price':192,
    'member':1,
    'img':'assets/images/pro18.webp',
    'decropction':'Teejh Anay Antique Chocker',
    'line':'Classique Designer Jewellery   Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'20.74g',
    'Height':'Height',
    'mem':'2.5 mm',
    'Length':'Length',
    'inch':'8 inches',
    'details':'Similar to the tennis bracelet, a tennis \nnecklace features a continuous line of diamonds set in a row \naround the neckline. Its a luxurious and eye-catching \npiece pecial occasions.',
  },
  {
    'price':300,
    'member':1,
    'img':'assets/images/pro20.jpg',
    'decropction':'Chicago Nacklace M224',
    'line':'Classique Designer Jewellery   Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'18.74g',
    'Height':'Height',
    'mem':'2.1 mm',
    'Length':'Length',
    'inch':'10 inches',
    'details':'Diamond Station Necklace: This style incorporates \ndiamonds set at intervals along the length of the chain.\n It can feature larger diamonds spaced apart .'
  },


];
List product2=[
  {
    'price':554,
    'member':1,
    'img':'assets/images/pro9.jpg',
    'decropction':' Gray Tone Queens ',
    'line':'Jewellery  Mother Of Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐⭐⭐ ',
    'Des':'Description',
    'weight':'Weight',
    'gram':'15.74g',
    'Height':'Height',
    'mem':'3 mm',
    'Length':'Length',
    'inch':'8 inches',
    'details':'Diamond Halo Necklace: A halo necklace surrounds a center\n diamond with a border of smaller diamonds, creating a dazzling effect.\nand this very  creating a dazzling effect. '

  },
  {
    'price':895,
    'member':1,
    'img':'assets/images/pro10.jpg',
    'decropction':' Gray Tone use Word Genertors',
    'line':'Classique Designer Jewellery  Mother Of Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'25.74g',
    'Height':'Height',
    'mem':'3.5 mm',
    'Length':'Length',
    'inch':'16 inches',
    'details':'Diamond Choker Necklace: A choker-style necklace sits \nclosely around the neck and can feature diamonds set along\n the entire length  in the center.'

  },
  {
    'price':585,
    'member':1,
    'img':'assets/images/pro11.jpg',
    'decropction':' Classique Designer Jewellery  Mother Of  Pearl Jewel ',
    'line':'Classique Designer Jewellery  Mother Of Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'23.74g',
    'Height':'Height',
    'mem':'3.8 mm',
    'Length':'Length',
    'inch':'15 inches',
    'details':'This style features a continuous \nline of diamonds of the same size and cut, set in a\n single row around the neck. The diamonds are \ntypically prong-set to allow maximum light exposure and brilliance'

  },
  {
    'price':280,
    'member':1,
    'img':'assets/images/pro12.webp',
    'decropction':' Princess cut Gray Tone',
    'line':'Classique Designer Jewellery  Mother Of Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'26.74g',
    'Height':'Height',
    'mem':'5 mm',
    'Length':'Length',
    'inch':'18 inches',
    'details':' Look for pendant necklaces that feature classic\n diamond cuts like round brilliant, princess, or emerald-cut diamonds.\n These pendants often have a simple yet elegant design'

  },

];
List product3=[
  {
    'price':198,
    'member':1,
    'img':'assets/images/pro13.jpg',
    'decropction':' Gray Tone Queens Cut',
    'line':'Classique Designer Jewellery Mother Of Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'23.00g',
    'Height':'Height',
    'mem':'2 mm',
    'Length':'Length',
    'inch':'13 inches',
    'details':' Explore vintage or antique diamond necklaces that\n showcase intricate designs from different eras,\n such as Art Deco or Victorian styles. '

  },
  {
    'price':158,
    'member':1,
    'img':'assets/images/pro14.jpg',
    'decropction':' Gray Tone Queens Cut',
    'line':'Let me know if youd like more options or if theres a specific ',
    'star':'⭐⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'20.99g',
    'Height':'Height',
    'mem':'4.8 mm',
    'Length':'Length',
    'inch':'16 inches',
    'details':'A diamond collar necklace sits snugly around\n the base of the neck and is usually adorned\n with multiple rows of diamonds. '

  },
  {
    'price':255,
    'member':1,
    'img':'assets/images/pro17.webp',
    'decropction':' Gray Tone Queens Cut',
    'line':'Classique Designer Jewellery  Mother Of Pearl Jewel Set.',
    'star':'⭐⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'22.74g',
    'Height':'Height',
    'mem':'4 mm',
    'Length':'Length',
    'inch':'15 inches',
    'details':'Diamond Cross Pendant Necklace: For a classic and meaningful \npiece, consider a diamond cross pendant necklace. '

  },
  {
    'price':288,
    'member':1,
    'img':'assets/images/pro16.webp',
    'decropction':' Gray Tone Queens Cut',
    'line':'Classique Designer Jewellery Grace Your Décolletage in Diamonds.".',
    'star':'⭐⭐⭐⭐⭐',
    'Des':'Description',
    'weight':'Weight',
    'gram':'28.74g',
    'Height':'Height',
    'mem':'5 mm',
    'Length':'Length',
    'inch':'16 inches',
    'details':'Diamond Layered Necklace: Create a stylish layered look \nby pairing multiple diamond necklaces of\n varying lengths and styles. '

  },



];

List cartList=[];
List cheakList=[];
