%jednoelementowy wektor współczynników
metodaSimpsona([1],0,20,10000)

%dwuelementowy wektor współczynników
metodaSimpsona([1,2],0,20,10000)
metodaSimpsona([1,2],0,20,1000000)
metodaSimpsona([1,2],0,20,100)

%trzyelementowy wektor współczynników
metodaSimpsona([1,2,3],0,20,10000)
metodaSimpsona([1,2,3],0,20,1000000)
metodaSimpsona([1,2,3],0,20,100)

%pięcioelementowy wektor współczynników
metodaSimpsona([1,2,3,4,5],0,20,10000)
metodaSimpsona([1,2,3,4,5],0,20,100)

%dziesięcioelementowy wektor współczynników
metodaSimpsona([1,2,3,4,5,6,7,8,9,10],0,20,10000)
metodaSimpsona([1,2,3,4,5,6,7,8,9,10],0,20,100)

%pusty wektor współczynników - został umieszczony na koniec, aby reszta
%działała
metodaSimpsona([],0,20,10000)