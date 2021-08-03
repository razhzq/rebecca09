//+------------------------------------------------------------------+
//|                                                     7include.mqh |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property strict
//+------------------------------------------------------------------+

//EURUSD
double topBB1EU = NormalizeDouble(iBands("EURUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1EU = iBands("EURUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1EU = NormalizeDouble(iBands("EURUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50EU = iMA("EURUSD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5EU = NormalizeDouble(iMA("EURUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10EU =  iMA("EURUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5EU =  NormalizeDouble(iMA("EURUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10EU = iMA("EURUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5EU = NormalizeDouble(iMA("EURUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5EU = NormalizeDouble(iMA("EURUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4EU = NormalizeDouble(iBands("EURUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyEU = NormalizeDouble(iBands("EURUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellEU = NormalizeDouble(iBands("EURUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3EU = NormalizeDouble(iBands("EURUSD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3EU = NormalizeDouble(iBands("EURUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//GBPUSD
double topBB1GU = NormalizeDouble(iBands("GBPUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1GU = iBands("GBPUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1GU = NormalizeDouble(iBands("GBPUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50GU = iMA("GPBUSD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5GU = NormalizeDouble(iMA("GBPUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10GU =  iMA("GBPUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5GU =  NormalizeDouble(iMA("GBPUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10GU = iMA("GBPUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5GU = NormalizeDouble(iMA("GBPUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5GU = NormalizeDouble(iMA("GBPUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4GU = NormalizeDouble(iBands("GBPUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyGU = NormalizeDouble(iBands("GBPUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellGU = NormalizeDouble(iBands("GBPUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3GU = NormalizeDouble(iBands("GBPUSD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3GU = NormalizeDouble(iBands("GBPUSD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//USDCHF

double topBB1UCHF = NormalizeDouble(iBands("USDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1UCHF = iBands("USDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1UCHF = NormalizeDouble(iBands("USDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50UCHF = iMA("USDCHF",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5UCHF = NormalizeDouble(iMA("USDCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10UCHF =  iMA("USDCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5UCHF =  NormalizeDouble(iMA("USDCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10UCHF = iMA("USDCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5UCHF = NormalizeDouble(iMA("USDCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5UCHF = NormalizeDouble(iMA("USDCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4UCHF = NormalizeDouble(iBands("USDCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyUCHF = NormalizeDouble(iBands("USDCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellUCHF = NormalizeDouble(iBands("USDCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3UCHF = NormalizeDouble(iBands("USDCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3UCHF = NormalizeDouble(iBands("USDCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//USDJPY

double topBB1UJ = NormalizeDouble(iBands("USDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1UJ = iBands("USDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1UJ = NormalizeDouble(iBands("USDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50UJ = iMA("USDJPY",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5UJ = NormalizeDouble(iMA("USDJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10UJ =  iMA("USDJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5UJ =  NormalizeDouble(iMA("USDJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10UJ = iMA("USDJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5UJ = NormalizeDouble(iMA("USDJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5UJ = NormalizeDouble(iMA("USDJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4UJ = NormalizeDouble(iBands("USDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyUJ = NormalizeDouble(iBands("USDJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellUJ = NormalizeDouble(iBands("USDJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3UJ = NormalizeDouble(iBands("USDJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3UJ = NormalizeDouble(iBands("USDJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//USDCAD

double topBB1UCAD = NormalizeDouble(iBands("USDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1UCAD = iBands("USDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1UCAD = NormalizeDouble(iBands("USDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50UCAD = iMA("USDCAD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5UCAD = NormalizeDouble(iMA("USDCAD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10UCAD =  iMA("USDCAD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5UCAD =  NormalizeDouble(iMA("USDCAD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10UCAD = iMA("USDCAD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5UCAD = NormalizeDouble(iMA("USDCAD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5UCAD = NormalizeDouble(iMA("USDCAD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4UCAD = NormalizeDouble(iBands("USDCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyUCAD = NormalizeDouble(iBands("USDCAD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellUCAD = NormalizeDouble(iBands("USDCAD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3UCAD = NormalizeDouble(iBands("USDCAD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3UCAD = NormalizeDouble(iBands("USDCAD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//AUDUSD

double topBB1AU = NormalizeDouble(iBands("AUDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1AU = iBands("AUDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1AU = NormalizeDouble(iBands("AUDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50AU = iMA("AUDUSD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5AU = NormalizeDouble(iMA("AUDUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10AU =  iMA("AUDUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5AU =  NormalizeDouble(iMA("AUDUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10AU = iMA("AUDUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5AU = NormalizeDouble(iMA("AUDUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5AU = NormalizeDouble(iMA("AUDUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4AU = NormalizeDouble(iBands("AUDUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyAU = NormalizeDouble(iBands("AUDUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellAU = NormalizeDouble(iBands("AUDUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3AU = NormalizeDouble(iBands("AUDUSD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3AU = NormalizeDouble(iBands("AUDUSD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//EURGBP

double topBB1EG = NormalizeDouble(iBands("EURGBP",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1EG = iBands("EURGBP",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1EG = NormalizeDouble(iBands("EURGBP",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50EG = iMA("EURGBP",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5EG = NormalizeDouble(iMA("EURGBP",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10EG =  iMA("EURGBP",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5EG =  NormalizeDouble(iMA("EURGBP",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10EG = iMA("EURGBP",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5EG = NormalizeDouble(iMA("EURGBP",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5EG = NormalizeDouble(iMA("EURGBP",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4EG = NormalizeDouble(iBands("EURGBP",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyEG = NormalizeDouble(iBands("EURGBP",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellEG = NormalizeDouble(iBands("EURGBP",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3EG = NormalizeDouble(iBands("EURGBP",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3EG = NormalizeDouble(iBands("EURGBP",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//EURAUD

double topBB1EA = NormalizeDouble(iBands("EURAUD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1EA = iBands("EURAUD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1EA = NormalizeDouble(iBands("EURAUD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50EA = iMA("EURAUD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5EA = NormalizeDouble(iMA("EURAUD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10EA =  iMA("EURAUD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5EA =  NormalizeDouble(iMA("EURAUD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10EA = iMA("EURAUD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5EA = NormalizeDouble(iMA("EURAUD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5EA = NormalizeDouble(iMA("EURAUD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4EA = NormalizeDouble(iBands("EURAUD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyEA = NormalizeDouble(iBands("EURAUD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellEA = NormalizeDouble(iBands("EURAUD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3EA = NormalizeDouble(iBands("EURAUD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3EA = NormalizeDouble(iBands("EURAUD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//EURCHF

double topBB1EC = NormalizeDouble(iBands("EURCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1EC = iBands("EURCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1EC = NormalizeDouble(iBands("EURCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50EC = iMA("EURCHF",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5EC = NormalizeDouble(iMA("EURCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10EC =  iMA("EURCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5EC =  NormalizeDouble(iMA("EURCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10EC = iMA("EURCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5EC = NormalizeDouble(iMA("EURCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5EC = NormalizeDouble(iMA("EURCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4EC = NormalizeDouble(iBands("EURCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyEC = NormalizeDouble(iBands("EURCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellEC = NormalizeDouble(iBands("EURCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3EC = NormalizeDouble(iBands("EURCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3EC = NormalizeDouble(iBands("EURCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 


//EURJPY

double topBB1EJ = NormalizeDouble(iBands("EURJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1EJ = iBands("EURJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1EJ = NormalizeDouble(iBands("EURJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50EJ = iMA("EURJPY",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5EJ = NormalizeDouble(iMA("EURJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10EJ =  iMA("EURJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5EJ =  NormalizeDouble(iMA("EURJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10EJ = iMA("EURJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5EJ = NormalizeDouble(iMA("EURJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5EJ = NormalizeDouble(iMA("EURJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4EJ = NormalizeDouble(iBands("EURJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyEJ = NormalizeDouble(iBands("EURJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellEJ = NormalizeDouble(iBands("EURJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3EJ = NormalizeDouble(iBands("EURJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3EJ = NormalizeDouble(iBands("EURJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//GBPCHF

double topBB1GC = NormalizeDouble(iBands("GBPCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1GC = iBands("GBPCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1GC = NormalizeDouble(iBands("GBPCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50GC = iMA("GBPCHF",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5GC = NormalizeDouble(iMA("GBPCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10GC =  iMA("GBPCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5GC =  NormalizeDouble(iMA("GBPCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10GC = iMA("GBPCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5GC = NormalizeDouble(iMA("GBPCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5GC = NormalizeDouble(iMA("GBPCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4GC = NormalizeDouble(iBands("GBPCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyGC = NormalizeDouble(iBands("GBPCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellGC = NormalizeDouble(iBands("GBPCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3GC = NormalizeDouble(iBands("GBPCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3GC = NormalizeDouble(iBands("GBPCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//CADJPY

double topBB1CJ = NormalizeDouble(iBands("CADJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1CJ = iBands("CADJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1CJ = NormalizeDouble(iBands("CADJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50CJ = iMA("CADJPY",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5CJ = NormalizeDouble(iMA("CADJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10CJ =  iMA("CADJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5CJ =  NormalizeDouble(iMA("CADJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10CJ = iMA("CADJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5CJ = NormalizeDouble(iMA("CADJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5CJ = NormalizeDouble(iMA("CADJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4CJ = NormalizeDouble(iBands("CADJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyCJ = NormalizeDouble(iBands("CADJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellCJ = NormalizeDouble(iBands("CADJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3CJ = NormalizeDouble(iBands("CADJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3CJ = NormalizeDouble(iBands("CADJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//GBPJPY

double topBB1GJ = NormalizeDouble(iBands("GBPJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1GJ = iBands("GBPJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1GJ = NormalizeDouble(iBands("GBPJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50GJ = iMA("GBPJPY",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5GJ = NormalizeDouble(iMA("GBPJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10GJ =  iMA("GBPJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5GJ =  NormalizeDouble(iMA("GBPJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10GJ = iMA("GBPJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5GJ = NormalizeDouble(iMA("GBPJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5GJ = NormalizeDouble(iMA("GBPJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4GJ = NormalizeDouble(iBands("GBPJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyGJ = NormalizeDouble(iBands("GBPJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellGJ = NormalizeDouble(iBands("GBPJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3GJ = NormalizeDouble(iBands("GBPJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3GJ = NormalizeDouble(iBands("GBPJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//AUDNZD

double topBB1AN = NormalizeDouble(iBands("AUDNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1AN = iBands("AUDNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1AN = NormalizeDouble(iBands("AUDNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50AN = iMA("AUDNZD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5AN = NormalizeDouble(iMA("AUDNZD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10AN =  iMA("AUDNZD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5AN =  NormalizeDouble(iMA("AUDNZD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10AN = iMA("AUDNZD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5AN = NormalizeDouble(iMA("AUDNZD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5AN = NormalizeDouble(iMA("AUDNZD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4AN = NormalizeDouble(iBands("AUDNZD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyAN = NormalizeDouble(iBands("AUDNZD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellAN = NormalizeDouble(iBands("AUDNZD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3AN = NormalizeDouble(iBands("AUDNZD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3AN = NormalizeDouble(iBands("AUDNZD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//AUDCAD

double topBB1AC = NormalizeDouble(iBands("AUDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1AC = iBands("AUDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1AC = NormalizeDouble(iBands("AUDCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50AC = iMA("AUDCAD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5AC = NormalizeDouble(iMA("AUDCAD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10AC =  iMA("AUDCAD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5AC =  NormalizeDouble(iMA("AUDCAD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10AC = iMA("AUDCAD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5AC = NormalizeDouble(iMA("AUDCAD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5AC = NormalizeDouble(iMA("AUDCAD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4AC = NormalizeDouble(iBands("AUDCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyAC = NormalizeDouble(iBands("AUDCAD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellAC = NormalizeDouble(iBands("AUDCAD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3AC = NormalizeDouble(iBands("AUDCAD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3AC = NormalizeDouble(iBands("AUDCAD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//AUDCHF

double topBB1ACHF = NormalizeDouble(iBands("AUDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1ACHF = iBands("AUDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1ACHF = NormalizeDouble(iBands("AUDCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50ACHF = iMA("AUDCHF",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5ACHF = NormalizeDouble(iMA("AUDCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10ACHF =  iMA("AUDCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5ACHF =  NormalizeDouble(iMA("AUDCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10ACHF = iMA("AUDCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5ACHF = NormalizeDouble(iMA("AUDCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5ACHF = NormalizeDouble(iMA("AUDCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4ACHF = NormalizeDouble(iBands("AUDCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyACHF = NormalizeDouble(iBands("AUDCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellACHF = NormalizeDouble(iBands("AUDCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3ACHF = NormalizeDouble(iBands("AUDCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3ACHF = NormalizeDouble(iBands("AUDCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//AUDJPY

double topBB1AJ = NormalizeDouble(iBands("AUDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1AJ = iBands("AUDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1AJ = NormalizeDouble(iBands("AUDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50AJ = iMA("AUDJPY",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5AJ = NormalizeDouble(iMA("AUDJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10AJ =  iMA("AUDJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5AJ =  NormalizeDouble(iMA("AUDJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10AJ = iMA("AUDJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5AJ = NormalizeDouble(iMA("AUDJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5AJ = NormalizeDouble(iMA("AUDJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4AJ = NormalizeDouble(iBands("AUDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyAJ = NormalizeDouble(iBands("AUDJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellAJ = NormalizeDouble(iBands("AUDJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3AJ = NormalizeDouble(iBands("AUDJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3AJ = NormalizeDouble(iBands("AUDJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//CHFJPY

double topBB1CHJ = NormalizeDouble(iBands("CHFJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1CHJ = iBands("CHFJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1CHJ = NormalizeDouble(iBands("CHFJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50CHJ = iMA("CHFJPY",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5CHJ = NormalizeDouble(iMA("CHFJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10CHJ =  iMA("CHFJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5CHJ =  NormalizeDouble(iMA("CHFJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10CHJ = iMA("CHFJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5CHJ = NormalizeDouble(iMA("CHFJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5CHJ = NormalizeDouble(iMA("CHFJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4CHJ = NormalizeDouble(iBands("CHFJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyCHJ = NormalizeDouble(iBands("CHFJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellCHJ = NormalizeDouble(iBands("CHFJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3CHJ = NormalizeDouble(iBands("CHFJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3CHJ = NormalizeDouble(iBands("CHFJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//EURNZD

double topBB1EN = NormalizeDouble(iBands("EURNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1CEN = iBands("EURNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1CEN = NormalizeDouble(iBands("EURNZD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50EN = iMA("EURNZD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5EN = NormalizeDouble(iMA("EURNZD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10EN =  iMA("EURNZD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5EN =  NormalizeDouble(iMA("EURNZD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10EN = iMA("EURNZD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5EN = NormalizeDouble(iMA("EURNZD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5EN = NormalizeDouble(iMA("EURNZD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4EN = NormalizeDouble(iBands("EURNZD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyEN = NormalizeDouble(iBands("EURNZD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellEN = NormalizeDouble(iBands("EURNZD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3EN = NormalizeDouble(iBands("EURNZD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3EN = NormalizeDouble(iBands("EURNZD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 


//EURCAD

double topBB1ECAD = NormalizeDouble(iBands("EURCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1ECAD = iBands("EURCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1ECAD = NormalizeDouble(iBands("EURCAD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50ECAD= iMA("EURCAD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5ECAD = NormalizeDouble(iMA("EURCAD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10ECAD =  iMA("EURCAD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5ECAD =  NormalizeDouble(iMA("EURCAD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10ECAD = iMA("EURCAD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5ECAD = NormalizeDouble(iMA("EURCAD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5ECAD = NormalizeDouble(iMA("EURCAD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4ECAD = NormalizeDouble(iBands("EURCAD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyECAD = NormalizeDouble(iBands("EURCAD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellECAD = NormalizeDouble(iBands("EURCAD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3ECAD = NormalizeDouble(iBands("EURCAD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3ECAD = NormalizeDouble(iBands("EURCAD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//CADCHF

double topBB1CC = NormalizeDouble(iBands("CADCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1CC = iBands("CADCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1CC = NormalizeDouble(iBands("CADCHF",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50CC= iMA("CADCHF",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5CC = NormalizeDouble(iMA("CADCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10CC =  iMA("CADCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5CC =  NormalizeDouble(iMA("CADCHF",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10CC = iMA("CADCHF",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5CC = NormalizeDouble(iMA("CADCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5CC = NormalizeDouble(iMA("CADCHF",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4CC = NormalizeDouble(iBands("CADCHF",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyCC = NormalizeDouble(iBands("CADCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellCC = NormalizeDouble(iBands("CADCHF",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3CC = NormalizeDouble(iBands("CADCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3CC = NormalizeDouble(iBands("CADCHF",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//NZDJPY

double topBB1NJ = NormalizeDouble(iBands("NZDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1NJ  = iBands("NZDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1NJ  = NormalizeDouble(iBands("NZDJPY",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50NJ = iMA("NZDJPY",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5NJ  = NormalizeDouble(iMA("NZDJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10NJ  =  iMA("NZDJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5NJ  =  NormalizeDouble(iMA("NZDJPY",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10NJ  = iMA("NZDJPY",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5NJ  = NormalizeDouble(iMA("NZDJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5NJ  = NormalizeDouble(iMA("NZDJPY",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4NJ  = NormalizeDouble(iBands("NZDJPY",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyNJ  = NormalizeDouble(iBands("NZDJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellNJ  = NormalizeDouble(iBands("NZDJPY",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3NJ  = NormalizeDouble(iBands("NZDJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3NJ  = NormalizeDouble(iBands("NZDJPY",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 

//NZDUSD

double topBB1NU = NormalizeDouble(iBands("NZDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double midBB1NU  = iBands("NZDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_MAIN,0);
double lowBB1NU  = NormalizeDouble(iBands("NZDUSD",PERIOD_H1,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits);

double ema50NU = iMA("NZDUSD",PERIOD_H1,50,0,MODE_EMA,PRICE_CLOSE,0);
double tapakHigh5NU  = NormalizeDouble(iMA("NZDUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
double tapakHigh10NU  =  iMA("NZDUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_HIGH,0);
double tapakLow5NU  =  NormalizeDouble(iMA("NZDUSD",PERIOD_H1,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakLow10NU  = iMA("NZDUSD",PERIOD_H1,10,0,MODE_LWMA,PRICE_LOW,0);
double tapaklowM15_5NU  = NormalizeDouble(iMA("NZDUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_LOW,0),Digits);
double tapakHigh15_5NU  = NormalizeDouble(iMA("NZDUSD",PERIOD_M15,5,0,MODE_LWMA,PRICE_HIGH,0),Digits);
 
double topBB4NU  = NormalizeDouble(iBands("NZDUSD",PERIOD_H4,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits);

double TPBuyNU  = NormalizeDouble(iBands("NZDUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_UPPER,0),Digits);
double TPSellNU  = NormalizeDouble(iBands("NZDUSD",PERIOD_H1,20,4,0,PRICE_CLOSE,MODE_LOWER,0),Digits);
double stopLossBuy3NU  = NormalizeDouble(iBands("NZDUSD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_LOWER,0),Digits); 
double stopLossSell3NU  = NormalizeDouble(iBands("NZDUSD",PERIOD_M30,20,2,0,PRICE_CLOSE,MODE_UPPER,0),Digits); 


double OptimalLotSize(double maxRiskPerc, int maxLossPips)
{
 
 
  double accEquity = AccountEquity();
  
  
  double lotSize = MarketInfo(NULL,MODE_LOTSIZE);
 
  
  double tickValue = MarketInfo(NULL,MODE_TICKVALUE);
  if(Digits <= 3)
  {
  tickValue = tickValue/100 ;
  }
  
  
  double maxLossDollar = accEquity * maxRiskPerc;
 
  double maxLossInQuoteCurr = maxLossDollar / tickValue;
  
  
  double optimalLotSize = NormalizeDouble(maxLossInQuoteCurr / (maxLossPips * GetPipValueFromDigits())/ lotSize,2);
  
  
  return optimalLotSize;

}

double OptimalLotSize(double maxRiskPrc, double entryPrice, double stopLoss)
{
  int maxLossInPips = MathAbs(entryPrice - stopLoss) / GetPipValueFromDigits();
  OptimalLotSize(maxRiskPrc,maxLossInPips);
  
  double optLot = OptimalLotSize(maxRiskPrc,maxLossInPips);
  return optLot;
}

double GetPipValueFromDigits() //pip value function
{
   if(_Digits >=4)
   {
   return 0.0001;
   }
   else 
   {
   return 0.01;
   }
   
}

bool CheckIfOpenOrderByMagicNB(int magicNB)
{

 int openOrders = OrdersTotal();
  
  
  for(int i = 0; i < openOrders; i++)
  {
   if (OrderSelect(i,SELECT_BY_POS) == true)
    {
      if(OrderMagicNumber() == magicNB)
      { 
       return true;
      }
   
   
    }
   }
  return false;
 }

 
 bool CheckIfOpenOrderPerSymbol()
 {
    int Total_Order = OrdersTotal();
 for (int pos = 0; pos <= Total_Order; pos ++)
      {
      if (OrderSelect (pos, SELECT_BY_POS) == true)
        {
        if (OrderSymbol () == Symbol ())
          {
            return true;
          }
          
         }
       }
       return false;
 }

