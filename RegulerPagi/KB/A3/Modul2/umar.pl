bapak(mardani,eni).
bapak(mardani,marzaeni ).
bapak(mardani,marsani).
bapak(mardani,entin).
bapak(sudono,partiningsih).
bapak(marzaeni,syarur).
bapak(marzaeni,umar).
ibu(maryam,alfiah).
ibu(maryam,marzaeni).
ibu(maryam,marsani).
ibu(maryam,entin).
ibu(waryuni,partiningsih).
ibu(partiningsih,syahrur).
ibu(partingsih,umar ).


anak(X,Y) :- ibu(Y,X).
cucu(Z,X) :- ibu(X,Y),anak(Z,Y).
