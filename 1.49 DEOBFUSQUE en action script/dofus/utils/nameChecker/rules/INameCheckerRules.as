interface dofus.utils.nameChecker.rules.INameCheckerRules
{
   function getMinNameLength();
   function getMaxNameLength();
   function getNumberOfAllowedDashes();
   function getIsAllowingSpaces();
   function getNoDashesOnTheseIndexes();
   function getIfFirstCharMustBeUppercase();
   function getIfNoCharAfterTheFirstMustBeUppercase();
   function getCharAllowingUppercase();
   function getIfCannotEndWithUppercase();
   function getStrictlyEqualsProhibedWords();
   function getContainingProhibedWords();
   function getBeginningProhibedWords();
   function getEndingProhibedWords();
   function getMinimumVowelsCount();
   function getMinimumConsonantsCount();
   function getMaxRepetitionForOneChar();
}
