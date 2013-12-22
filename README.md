StringBuilder
=============

creates and manages your string localizations in xcode

python script that will:
create an auto generated NSString category filled with static getter methods based on your strings.h file

Instead of having to always use NSLocalizedString(@"some key", nil) for a localized string, you can now use this wrapper to access your localized strings with a call like [NSString someKey];  The benifits from this is that if you ever want to change your value in Localizable.strings, your project can get out of sync and it becomes quite a mess.  Using the NSString category, you will now get compiler errors if a string is ever removed and if you just change the values in your new strings.h file, no code need ever change.

what you will need to do to use:

this does require a certain dir structure in your project (though a lot of it is handled by the script already).  there needs to be a res dir at the root level of your project i.e. on the same level as your .xcodeproj

structure:

res:
	localization: (this will be created the first time you build your project once the script is added to your build phases)

	values: (if you're like me, you'll have a lot of other things besides strings here...i know it's an android feature, but if it's a good idea, i say use it)
		strings:
			/* 
			 * here's where it becomes really important
			 * similar to how apple handles the Localizable.strings, you need to replicate that struct here
			 *
			 * i.e.
			 * en.lproj
			 * es.lproj
			 * 
			 * this would localize for english and spanish
			 */

			 // these two files are auto generated, you will never have to worry about them.
			 NSString+LocalizationReader.h
			 NSString+LocalizationReader.m

			 en.lproj:
				strings.h

			es.lproj:
				strings.h

other goodies:

• automatically builds the res structure if it's not there with the appropriate strings.h files (they will be blank but at least there)
• your method declaration in the NSString+LocalizationReader.h|m files are automatically alphabatized
• will automatically return the en string if there isn't a localized version of the string,
• will create an html file per language that is missing keys to make it easier to see what is missing as well as something to send to your translator (found in localizeResults/)
• automatically adds the html reports to your .gitignore file if you're using a git repo
• automatically adds the NSString+LocalizationReader.h to your .pch files
