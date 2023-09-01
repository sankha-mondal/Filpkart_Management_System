create database projectdb;

use projectdb;

--please run the backend first else table will not be created

show tables;

--insert date of product_category

INSERT INTO product_category VALUES (214748300, 'Tables & Chairs', 0, '2022-07-16 21:00:26', '2022-07-17 00:10:27');
INSERT INTO product_category VALUES (214748301, 'Beds', 1, '2022-07-16 21:01:26', '2022-07-17 00:11:27');
INSERT INTO product_category VALUES (214748302, 'Sofas', 2, '2022-07-16 21:02:36', '2022-07-17 00:12:57');
INSERT INTO product_category VALUES (214748303, 'Lighting', 3, '2022-07-16 21:03:31', '2022-07-17 00:13:54');
INSERT INTO product_category VALUES (214748304, 'Dinnerware', 4, '2022-07-16 21:04:39', '2022-07-17 00:14:52');
INSERT INTO product_category VALUES (214748305, 'Wardrobe', 5, '2022-07-16 21:05:39', '2022-07-17 00:15:22');
INSERT INTO product_category VALUES (214748306, 'Planters', 6, '2022-07-16 21:06:19', '2022-07-17 00:16:13');
INSERT INTO product_category VALUES (214748307, 'Decoration', 7, '2022-07-16 21:07:49', '2022-07-17 00:17:26');
INSERT INTO product_category VALUES (214748308, 'Cooktops', 8, '2022-07-16 21:08:25', '2022-07-17 00:18:26');
INSERT INTO product_category VALUES (214748309, 'Mirrors', 9, '2022-07-16 21:09:25', '2022-07-17 00:19:16');
INSERT INTO product_category VALUES (214748310, 'Televisions', 10, '2022-07-16 21:10:15', '2022-07-17 00:20:16');
INSERT INTO product_category VALUES (214748311, 'Kids and Teens', 11, '2022-07-16 21:11:29', '2022-07-17 00:21:49');
INSERT INTO product_category VALUES (214748312, 'Clocks', 12, '2022-07-16 21:13:42', '2022-07-17 00:23:57');


--insert data of product_info

INSERT INTO product_info VALUES ('W0001', 5, '2022-07-16 10:37:39', 'Wardrobe With Drawer in Natural Teak Finish', 'https://ii1.pepperfry.com/media/catalog/product/l/i/494x544/linden-4-door-wardrobe-in-natural-teak-finish-by-spacewood-linden-4-door-wardrobe-in-natural-teak-fi-oyjs1n.jpg', 'Linden 4 Door Wardrobe', 35000.00, 1, 156, '2022-07-16 19:42:02');
INSERT INTO product_info VALUES ('T0001', 10, '2022-07-16 10:39:35', 'AKAI 60 cms (24 Inches) HD Ready LED TV', 'https://ii3.pepperfry.com/media/catalog/product/a/k/494x544/akai-60-cms--24-inches--hd-ready-led-tv-aklt24nd53w--black--akai-60-cms--24-inches--hd-ready-led-tv--hd6r7m.jpg', 'LED TV AKLT24ND53W', 15770.00, 0, 205, '2022-07-16 19:45:39');
INSERT INTO product_info VALUES ('C0001', 8, '2022-07-16 10:40:27', 'SUNFLAME 4 Burner cooktop PRIME 4BR', 'https://ii1.pepperfry.com/media/catalog/product/s/u/800x880/sunflame-4-burner-cooktop-prime-4br-sunflame-4-burner-cooktop-prime-4br-i0atd3.jpg', 'Cooktop PRIME', 7400.00, 1, 245, '2022-07-16 19:46:48');
INSERT INTO product_info VALUES ('S0001', 2, '2022-07-16 10:41:39', 'Three Seater Sofa In Garnet Red Colour', 'https://ii2.pepperfry.com/media/catalog/product/m/i/494x544/miranda-three-seater-sofa-in-garnet-red-colour-by-woodsworth-miranda-three-seater-sofa-in-garnet-red-rofsgf.jpg', 'Ladybug 2 Seater Sofa', 12860.00, 0, 140, '2022-07-16 19:46:57');
INSERT INTO product_info VALUES ('M0001', 9, '2022-07-16 10:42:55', 'Framed Wall Mirror In Golden Colour', 'https://ii1.pepperfry.com/media/catalog/product/e/n/494x544/engineered-wood-full-length-wall-mirror-in-golden-colour-by-zahab-engineered-wood-full-length-wall-m-s6pjjo.jpg', 'Ladybug 2 Seater Sofa', 9267.00, 0, 281, '2022-07-16 19:47:14');
INSERT INTO product_info VALUES ('L0001', 3, '2022-07-16 10:43:37', 'Wooden Floor Lamp With Khadi Shade', 'https://ii1.pepperfry.com/media/catalog/product/h/o/800x880/homesake-classic-sphere-ball-antique-black-finish-wooden-floor-lamp-with-khadi-shade-homesake-classi-pl7vyd.jpg', 'Homesake Classic Sphere Lamp', 3229.00, 1, 132, '2022-07-16 19:48:11');
INSERT INTO product_info VALUES ('Ta0001', 0, '2022-07-16 10:44:19', 'Wood Study Table In Honey Oak Finish', 'https://ii1.pepperfry.com/media/catalog/product/p/o/800x880/polson-solid-wood-study-table-in-honey-oak-finish-by-woodsworth-polson-solid-wood-study-table-in-hon-fn5uyh.jpg', 'Polson Solid Wood Study Table', 6300.00, 0, 249, '2022-07-16 19:49:29');
INSERT INTO product_info VALUES ('B0001', 1, '2022-07-16 10:45:29', 'Bed with Storage in Wenge Finish', 'https://ii1.pepperfry.com/media/catalog/product/b/o/800x880/bolton-queen-size-bed-with-storage-in-wenge-finish-by-hometown-bolton-queen-size-bed-with-storage-in-wzltyh.jpg', 'Bolton Queen Size Bed', 29899.00, 0, 159, '2022-07-16 19:50:31');
INSERT INTO product_info VALUES ('S0002', 2, '2022-07-16 10:46:15', 'Sofa In Graphite Grey Colour', 'https://ii1.pepperfry.com/media/catalog/product/s/e/568x284/serena-3-seater-in-graphite-grey-colour-serena-3-seater-in-graphite-grey-colour-mxe7va.jpg', 'Serena 3 Seater Sofa', 27375.00, 0, 205, '2022-07-16 19:51:15');
INSERT INTO product_info VALUES ('L0002', 3, '2022-07-16 10:47:35', 'Floor Lamp With Brass Base', 'https://ii1.pepperfry.com/media/catalog/product/k/w/494x544/kwan-beige-fabric-shade-floor-lamp-with-brass-base-by-casacraft-kwan-beige-fabric-shade-floor-lamp-w-chhzq0.jpg', 'Kwan Beige Fabric Lamp', 4022.00, 0, 96, '2022-07-16 19:52:27');
INSERT INTO product_info VALUES ('D0001', 4, '2022-07-16 10:48:24', '40 Pcs Melamine Design Dinner Set', 'https://ii2.pepperfry.com/media/catalog/product/s/q/494x544/square--white-marble-design-40-pcs-melamine-dinner-set-by-cdi-square--white-marble-design-40-pcs-mel-iikwvr.jpg', 'White Marble Dinner Set', 4899.00, 0, 346, '2022-07-16 19:53:42');
INSERT INTO product_info VALUES ('P0001', 5, '2022-07-16 10:49:35', 'Door Wardrobe In Choco Walnut Finish', 'https://ii3.pepperfry.com/media/catalog/product/c/o/494x544/coral-4-door-wardrobe-in-choco-walnut-finish-by-a-globia-creations-coral-4-door-wardrobe-in-choco-wa-ei8jco.jpg', 'Coral 4 Door Wardrobe', 29845.00, 0, 312, '2022-07-16 19:54:17');
INSERT INTO product_info VALUES ('G0001', 6, '2022-07-16 10:50:37', 'Matt Black Ceramic Love Bite Large Planter', 'https://ii2.pepperfry.com/media/catalog/product/m/a/494x544/matt-black-ceramic-love-bite-large-planter-by-harla-arts-matt-black-ceramic-love-bite-large-planter--8swve1.jpg', 'Matt Black Planter', 1959.00, 0, 164, '2022-07-16 19:55:43');
INSERT INTO product_info VALUES ('X0023', 6, '2022-07-16 10:51:42', 'Beige Assam Cane 3 Tier Planter Stand', 'https://ii3.pepperfry.com/media/catalog/product/b/e/494x544/beige-assam-cane-3-tier-planter-stand-by-zilver-beige-assam-cane-3-tier-planter-stand-by-zilver-xxzc2j.jpg', 'Assam Tier Planter', 4293.00, 0, 247, '2022-07-16 19:56:27');
INSERT INTO product_info VALUES ('X0013', 6, '2022-07-16 10:52:47', 'Grey Fiber Glass Floor Planters, Set of 3', 'https://ii1.pepperfry.com/media/catalog/product/g/r/494x544/grey-fiber-glass-floor-planters--set-of-3-by-avantika-s-garden-grey-fiber-glass-floor-planters--set--evfufa.jpg', 'Fiber Glass Floor Planter', 6199.00, 0, 193, '2022-07-16 19:57:49');
INSERT INTO product_info VALUES ('X0019', 0, '2022-07-16 11:12:32', 'Writing Table in Brazilian walnut Finish', 'https://ii2.pepperfry.com/media/catalog/product/a/r/494x544/artist-wallmount-writing-table-in-brazilian-walnut-finish-by-hoffice-artist-wallmount-writing-table--ygrj1n.jpg', 'Artist Wallmount Writing Table', 5238.00, 0, 125, '2022-07-16 20:12:54');
INSERT INTO product_info VALUES ('B0019', 0, '2022-07-16 11:14:12', 'Foldable Study Table in White Colour', 'https://ii3.pepperfry.com/media/catalog/product/o/l/494x544/olive-wall-mounted-foldable-study-table-in-white-colour-by-forzza-olive-wall-mounted-foldable-study--ijpnbi.jpg', 'Olive Wall Mounted Table', 2444.00, 0, 256, '2022-07-16 20:14:29');
INSERT INTO product_info VALUES ('X0017', 1, '2022-07-16 11:15:28', 'Box Desk Bed with Storage in Wenge Finish', 'https://ii1.pepperfry.com/media/catalog/product/b/o/494x544/bolton-king-size-bed-with-storage-in-wenge-finish-by-hometown-bolton-king-size-bed-with-storage-in-w-6ebo3z.jpg', 'Bolton King Size Bed', 31999.00, 0, 135, '2022-07-16 20:17:22');
INSERT INTO product_info VALUES ('S0017', 1, '2022-07-16 11:17:42', 'Bed With Hydraulic Storage in Matte Finish', 'https://ii1.pepperfry.com/media/catalog/product/v/i/494x544/victoria-king-size-bed-with-hydraulic-storage-in-gloss-finish-by-a-globia-creations-victoria-king-si-7uafer.jpg', 'Victoria King Size Bed', 47245.00, 0, 219, '2022-07-16 20:19:37');
INSERT INTO product_info VALUES ('X0018', 2, '2022-07-16 11:19:37', 'Alfredo 3 Seater Sofa in Navy Blue Colour', 'https://ii1.pepperfry.com/media/catalog/product/a/l/494x544/alfredo-three-seater-sofa-in-navy-blue-colour-by-casacraft-alfredo-three-seater-sofa-in-navy-blue-co-od2hyx.jpg', 'Alfredo 3 Seater Sofa', 37558.00, 0, 158, '2022-07-16 20:21:57');
INSERT INTO product_info VALUES ('X0025', 2, '2022-07-16 11:21:41', 'Floor Lamp With Brown Rope Base', 'https://ii1.pepperfry.com/media/catalog/product/g/r/494x544/grey-fabric-shade-floor-lamp-with-brown-rope-base-by-sapphire-grey-fabric-shade-floor-lamp-with-brow-qnui67.jpg', 'Grey Fabric Shade Lamp', 4499.00, 0, 281, '2022-07-16 20:23:45');
INSERT INTO product_info VALUES ('X0020', 4, '2022-07-16 11:23:37', 'Floral (41 Pieces) Melamine Dinnerware Set', 'https://ii1.pepperfry.com/media/catalog/product/w/h/494x544/white-set-of-41-melamine-dinner-set-by-cdi-white-set-of-41-melamine-dinner-set-by-cdi-w7bqyg.jpg', 'Stone Melamine Dinnerware Set', 3599.00, 0, 179, '2022-07-16 20:25:36');
INSERT INTO product_info VALUES ('Z0020', 4, '2022-07-16 11:25:29', 'White Flower (33 Pieces) Melamine Dinnerware Set', 'https://ii2.pepperfry.com/media/catalog/product/w/h/494x544/white-flower-print-melamine-dinner-set-set-of-33-by-cdi-white-flower-print-melamine-dinner-set-set-o-hus5un.jpg', 'White Melamine Dinnerware Set', 1949.00, 0, 219, '2022-07-16 20:28:51');
INSERT INTO product_info VALUES ('X0030', 5, '2022-07-16 11:27:16', 'Nicole 4 Door Wardrobe', 'https://ii2.pepperfry.com/media/catalog/product/n/i/494x544/nicole-4-door-wardrobe-in-natural-teak-finish-by-casacraft-nicole-4-door-wardrobe-in-natural-teak-fi-oi5ytc.jpg', 'Wardrobe in Natural Teak Finish', 58274.00, 0, 243, '2022-07-16 20:32:41');
INSERT INTO product_info VALUES ('X0001', 7, '2022-07-16 11:29:25', 'Multicolour Wooden Decorative Wall Mask', 'https://ii2.pepperfry.com/media/catalog/product/m/u/494x544/multicolour-wooden-decorative-wall-mask-by-cocovey-multicolour-wooden-decorative-wall-mask-by-cocove-ivozcw.jpg', 'Decorative Wall Mask', 1507.00, 0, 93, '2022-07-16 20:34:15');
INSERT INTO product_info VALUES ('X0021', 7, '2022-07-16 11:31:48', 'Golden Buddha For Decoration', 'https://ii1.pepperfry.com/media/catalog/product//f/i/236x260/fiber---resin-buddha-in-golden-by-vardaanya-homes-fiber---resin-buddha-in-golden-by-vardaanya-homes-fkkmop.jpg', 'Fiber & Resin Buddha', 3999.00, 0, 153, '2022-07-16 20:36:43');
INSERT INTO product_info VALUES ('X0028', 7, '2022-07-16 11:35:28', 'Wall Mask Frame For Decoration', 'https://ii3.pepperfry.com/media/catalog/product/b/l/494x544/black-wood---iron-wall-mask-by-chinhhari-arts-black-wood---iron-wall-mask-by-chinhhari-arts-q5k5fz.jpg', 'Black Wood & Iron Wall Mask', 2564.00, 0, 212, '2022-07-16 20:38:51');
INSERT INTO product_info VALUES ('X0011', 8, '2022-07-16 11:37:33', 'Glass Cooktop CS -3 GT Shine Manual', 'https://ii3.pepperfry.com/media/catalog/product/p/a/494x544/padmini-3-burner-glass-cooktop-cs--3-gt-shine-manual-padmini-3-burner-glass-cooktop-cs--3-gt-shine-m-vjah8y.jpg', 'Burner Glass Cooktop', 4749.00, 0, 124, '2022-07-16 20:41:39');
INSERT INTO product_info VALUES ('X0051', 8, '2022-07-16 11:40:51', 'Glass Cooktop CS -2 GT Shine Manual', 'https://ii3.pepperfry.com/media/catalog/product/p/a/494x544/padmini-2-burner-glass-cooktop-cs--2-gt-nano-manual-padmini-2-burner-glass-cooktop-cs--2-gt-nano-man-fmei6h.jpg', 'Burner Glass Cooktop CS', 2999.00, 0, 231, '2022-07-16 20:43:21');
INSERT INTO product_info VALUES ('Z0051', 9, '2022-07-16 11:42:29', 'Glass Rectangle Wall Mirror in Transparent colour', 'https://ii1.pepperfry.com/media/catalog/product/t/r/494x544/transparent-transparent-lmtlx7.jpg', 'Rectangle Wall Mirror', 1199.00, 0, 143, '2022-07-16 20:45:11');
INSERT INTO product_info VALUES ('M0051', 10, '2022-07-16 11:46:29', 'Onix 108 cm (43 inch) Full HD LED TV', 'https://ii3.pepperfry.com/media/catalog/product/o/n/494x544/onix-108-cm--43-inch--full-hd-led-smart-android-tv---liva-43--onix-108-cm--43-inch--full-hd-led-smar-jrlkct.jpg', 'LED Smart Android TV', 44641.00, 0, 234, '2022-07-16 20:49:35');
INSERT INTO product_info VALUES ('C0051', 10, '2022-07-16 11:46:29', 'TCL 139 cm (55 inches) AI 4K Ultra HD LED TV', 'https://ii1.pepperfry.com/media/catalog/product/t/c/800x880/tcl-139-cm--55-inches--ai-4k-ultra-hd-android-smart-led-tv--55p715--2020-model--remote-less-voice-co-ddmgiu.jpg', 'LED Smart Android TV', 44565.00, 0, 141, '2022-07-16 20:51:29');
INSERT INTO product_info VALUES ('S0020', 11, '2022-07-16 11:46:29', 'Champion Study Table in White Colour', 'https://ii2.pepperfry.com/media/catalog/product/c/h/494x544/champion-study-table-in-white-by-casacraft-champion-study-table-in-white-by-casacraft-ystwi2.jpg', 'Study Table for Kids', 14264.00, 0, 271, '2022-07-16 20:53:19');
INSERT INTO product_info VALUES ('W0020', 11, '2022-07-16 11:48:51', 'Battery Operated Rotating Building Blocks', 'https://ii2.pepperfry.com/media/catalog/product/b/a/494x544/battery-operated-rotating-building-blocks-by-chocozone-battery-operated-rotating-building-blocks-by--vx4b1s.jpg', 'Building Blocks for Kids', 14264.00, 0, 135, '2022-07-16 20:55:2
INSERT INTO product_info VALUES ('Z0015', 11, '2022-07-16 11:50:46', 'Kids Tent With Padded Mat In Cream Colour', 'https://ii1.pepperfry.com/media/catalog/product/k/i/494x544/kids-tent-with-padded-mat-in-cream-colour-by-my-gift-booth-kids-tent-with-padded-mat-in-cream-colour-0gzgah.jpg', 'Kids Soft Tent', 5414.00, 0, 2055, '2022-07-16 20:57:41');
INSERT INTO product_info VALUES ('Z0018', 12, '2022-07-16 11:52:46', 'Copper Plastic Dual Antique Victoria Clock', 'https://ii2.pepperfry.com/media/catalog/product/c/o/494x544/copper-plastic-dual-antique-victoria-analog-railway-clock-by-exim-decor-copper-plastic-dual-antique--gue3a5.jpg', 'Analog Railway Clock', 1229.00, 0, 157, '2022-07-16 20:58:51');
INSERT INTO product_info VALUES ('S0061', 12, '2022-07-16 11:54:34', 'Synthetic Decorative Double Sided Retro Clock', 'https://ii1.pepperfry.com/media/catalog/product//s/y/236x260/synthetic-decorative-double-sided-retro-station-wall-clock-in-brown-by-funkydecors-synthetic-decorat-hapuqc.jpg', 'Station Wall Clock', 5291.00, 0, 214, '2022-07-16 20:59:01');
INSERT INTO product_info VALUES ('F0061', 12, '2022-07-16 11:56:43', 'Golden Yellow Wooden Wall Clock In Brown', 'https://ii3.pepperfry.com/media/catalog/product/w/o/494x544/wooden-wall-clock-in-brown-by-aakriti-art-creations-wooden-wall-clock-in-brown-by-aakriti-art-creati-p2onz4.jpg', 'Wooden Wall Clock', 1125.00, 1, 143, '2022-07-16 20:59:58');

-- insert cart data

INSERT INTO cart VALUES (214748300);
INSERT INTO cart VALUES (214748301);
INSERT INTO cart VALUES (214748302);
INSERT INTO cart VALUES (214748303);
INSERT INTO cart VALUES (214748304);
INSERT INTO cart VALUES (214748305);
INSERT INTO cart VALUES (214748306);
INSERT INTO cart VALUES (214748307);
INSERT INTO cart VALUES (214748308);
INSERT INTO cart VALUES (214748309);
INSERT INTO cart VALUES (214748310);
INSERT INTO cart VALUES (214748311);
INSERT INTO cart VALUES (214748312);

-- No need to insert data for Cart, Wishlist, Order, User
-- While running all the operations like Register, Login, Add to cart, Add to WishList, Place Order
-- The data will automatically add to the database projectdb corresponding to the respective table. 
-- Admin can add items or products by Buld Upload & Manual Upload
-- Only we need to insert category through MySQL database. 
-- We will implement insert category operation in frontend very soon.