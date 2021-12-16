#Lab 5 for reference

#Reading Data
df <- read.csv("C:/Users/12195/Documents/Data 151/Weightless_Numerical_Data.csv")

#Cleaning Negative value
df$Member.years[df$Member.years == -1806] <- 0

#Fixing commas into decimals for Hotel Stars
df$Hotel.stars[df$Hotel.stars == "3,5"] <- 3.5
df$Hotel.stars[df$Hotel.stars == "4,5"] <- 4.5
df$Hotel.stars

#Creating cleaned csv for future use
write.csv(df,"C:/Users/12195/Documents/Data 151/Cleaned_Weightless_Numerical_Data.csv", row.names = FALSE)

#Reading new csv
df <- read.csv("C:/Users/12195/Documents/Data 151/Cleaned_Weightless_Numerical_Data.csv")

#Beginning linear model with backwards regression
#Initial model
#Removing NA values first (South America, Solo, New Zeland, South Africa, UK, USA, Sep.Nov, Circus.Circus, Marriott.s, Monte.Carlo, The.Cromwell, Tropicana, Trump, Tuscany, Wyndham, Wynn, June, May, September, Wednesday)
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Couples + Families + Friends + Australia + Belgium + Brazil + Canada + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Honduras + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Japan + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Jun.Aug + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + July + March + November + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing November
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Couples + Families + Friends + Australia + Belgium + Brazil + Canada + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Honduras + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Japan + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Jun.Aug + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + July + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Couples
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + Canada + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Honduras + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Japan + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Jun.Aug + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + July + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Japan
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + Canada + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Honduras + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Jun.Aug + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + July + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Canada
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Honduras + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Jun.Aug + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + July + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Jun.Aug
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Honduras + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + July + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing July
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Honduras + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Honduras
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + Hungary + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Hungary
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Netherlands + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Netherlands
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Africa + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Africa
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Czech.Republic + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Czech.Republic
m_allnum <- lm(Score ~ Nr..reviews + Nr..hotel.reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Nr..hotel.reviews
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Italy + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Italy
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Costa.Rica + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Costa.Rica
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Phillippines + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Phillippines
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Asia + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Asia
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Iran + Ireland + Israel + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Iran
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Ireland + Israel + Jordan + Kenya +Korea + Kuwait + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Kuwait
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Denmark + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Ireland + Israel + Jordan + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Denmark
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Ireland + Israel + Jordan + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Jordan
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Ireland + Israel + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + United.Arab.Emirates + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing United.Arab.Emirates
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Ireland + Israel + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Syria + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Syria
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + Hawaii + India + India.1 + Ireland + Israel + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Hawaii
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Member.years + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Member.years
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday + Tuesday, data = df)
summary(m_allnum)

#Removing Tuesday
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Saudi.Arabia + Scotland + Singapore + Spain + Swiss + Switzerland + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Saudi.Arabia
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Malaysia + Mexico + Norway + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Switzerland + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Malaysia
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Mexico + Norway + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Switzerland + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Norway
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Switzerland + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Switzerland
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Australia + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Australia
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Belgium + Brazil + China + Croatia + Egypt + Finland + France + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing France
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Belgium + Brazil + China + Croatia + Egypt + Finland + Germany + Greece + India + India.1 + Ireland + Israel + Kenya +Korea + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Korea
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Belgium + Brazil + China + Croatia + Egypt + Finland + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Finland
m_allnum <- lm(Score ~ Nr..reviews + Helpful.votes + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Belgium + Brazil + China + Croatia + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Helpful.votes
m_allnum <- lm(Score ~ Nr..reviews + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Belgium + Brazil + China + Croatia + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Belgium
m_allnum <- lm(Score ~ Nr..reviews + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Brazil + China + Croatia + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Croatia
m_allnum <- lm(Score ~ Nr..reviews + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Friends + Brazil + China + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Friends
m_allnum <- lm(Score ~ Nr..reviews + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + August + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing August
m_allnum <- lm(Score ~ Nr..reviews + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Monday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Monday
m_allnum <- lm(Score ~ Nr..reviews + Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Nr..reviews
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday + Sunday + Thursday, data = df)
summary(m_allnum)

#Removing Sunday
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday + Thursday, data = df)
summary(m_allnum)

#Removing Thursday
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Egypt + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Egypt
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Germany + Greece + India + India.1 + Ireland + Israel + Kenya + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Kenya
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Germany + Greece + India + India.1 + Ireland + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing India.1
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Germany + Greece + India + Ireland + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Ireland
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Spa + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Germany + Greece + India + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Dummy.Spa
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Gym + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Germany + Greece + India + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Dummy.Gym
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Germany + Greece + India + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Encore.at.wynn.Las.Vegas + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Encore.at.wynn
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Germany + Greece + India + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Germany
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Greece + India + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + October + Friday + Saturday, data = df)
summary(m_allnum)

#Removing October
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Greece + India + Israel + Mexico + Puerto.Rico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Puerto.Rico
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Greece + India + Israel + Mexico + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Mexico
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Greece + India + Israel + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Israel
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Greece + India + Scotland + Singapore + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Singapore
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Greece + India + Scotland + Spain + Swiss + Taiwan + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Taiwan
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Greece + India + Scotland + Spain + Swiss + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Greece
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Casino + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + India + Scotland + Spain + Swiss + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Dummy.Casino
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + India + Scotland + Spain + Swiss + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing India
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Scotland + Spain + Swiss + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Swiss
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Scotland + Spain + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + April + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing April
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Scotland + Spain + Dec.Feb + Mar.May + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Mar.May
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + March + Friday + Saturday, data = df)
summary(m_allnum)

#Removing March
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + Brazil + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Brazil
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Oceania + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Oceania
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Europe + North.America + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Europe
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + North.America + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing North.America
m_allnum <- lm(Score ~ Hotel.stars + Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Hotel.stars
m_allnum <- lm(Score ~ Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Venetian.Las.Vegas.Hotel + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing The.Venetian
m_allnum <- lm(Score ~ Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Palazzo.Resort.Hotel.Casino + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing The.Palazzo
m_allnum <- lm(Score ~ Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Hilton.Grand.Vacations.on.the.Boulevard + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Hilton.Grand
m_allnum <- lm(Score ~ Nr..rooms + Dummy.Pool + Dummy.Tennis + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Dummy.Tennis
m_allnum <- lm(Score ~ Nr..rooms + Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Cosmopolitan.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing The.Cosmopolitan
m_allnum <- lm(Score ~ Nr..rooms + Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Nr..rooms
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Bellagio.Las.Vegas + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Bellagio.Las.Vegas
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Caesars.Palace + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Caesars.Palace
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Dec.Feb + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)
#At this point, it is significant if using flexible p-value (p<0.1)

#Removing Dec.Feb
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + January + Friday + Saturday, data = df)
summary(m_allnum)

#Removing January
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + December + February + Friday + Saturday, data = df)
summary(m_allnum)

#Removing December
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + February + Friday + Saturday, data = df)
summary(m_allnum)

#Removing February
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Excalibur.Hotel...Casino + Hilton.Grand.Vacations.at.the.Flamingo + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Hilton.Grand.Vacations
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Excalibur.Hotel...Casino + Paris.Las.Vegas + The.Westin.las.Vegas.Hotel.Casino...Spa + Treasure.Island..TI.Hotel...Casino + Friday + Saturday, data = df)
summary(m_allnum)

#Removing The.Westin
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Excalibur.Hotel...Casino + Paris.Las.Vegas + Treasure.Island..TI.Hotel...Casino + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Paris
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Spain + Excalibur.Hotel...Casino + Treasure.Island..TI.Hotel...Casino + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Spain
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Excalibur.Hotel...Casino + Treasure.Island..TI.Hotel...Casino + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Treasure.Island
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Excalibur.Hotel...Casino + Friday + Saturday, data = df)
summary(m_allnum)

#Removing Friday
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Scotland + Excalibur.Hotel...Casino + Saturday, data = df)
summary(m_allnum)

#Removing Scotland
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + Families + China + Excalibur.Hotel...Casino + Saturday, data = df)
summary(m_allnum)

#Removing Families
m_allnum <- lm(Score ~ Dummy.Pool + Dummy.Free.Internet + Business + China + Excalibur.Hotel...Casino + Saturday, data = df)
summary(m_allnum)

#All have reached significant
#Sig variables: Dummy.Pool, Dummy.Free.Internet, Business, China, Excalibur.Hotel...Casino, Saturday