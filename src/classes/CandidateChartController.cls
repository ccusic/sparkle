global with sharing class CandidateChartController {
    @AuraEnabled
    global static string getChartjsData(string dataProviderName){
        iChartjsDataProvider dp;
        dp = (iChartjsDataProvider)type.forName(dataProviderName).newInstance();
        return dp.getChartjsData();
    }
}