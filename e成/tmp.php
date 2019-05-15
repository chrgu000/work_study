<?php
//app/Modules/TobAccount/Http/Controllers/AccountSettingController.php
/**
     * api post /accountSetting/getCompanyListByWuYi
     * notes: 获取51job 公司信息
     * author: jianjun.yan
     * date: 2019-05-14 17:26
     *
     * @param RE\SaveThirdAccount $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function getCompanyListByWuYi(RE\SaveThirdAccount $request)
    {
        $accountThirdVO = VO\SaveThirdAccountVO::load($request->all());
        $result = $this->accountThirdService->getCompanyListByWuYi($accountThirdVO);
        return $this->success($result);
    }

    //app/Modules/TobAccount/Routes/api.php
        //51公司信息获取
        Route::post('/getCompanyListByWuYi', ['uses' => 'AccountSettingController@getCompanyListByWuYi'])->name('getCompanyListByWuYi');

//app/Modules/TobAccount/Services/AccountSetting/AccountThirdService.php
            /**
     * notes:
     * author: jianjun.yan
     * date: 2019-05-14 17:24
     *
     * @param SaveThirdAccountVO $accountThirdVO
     *
     * @return array|array[]|bool|number[]|string[]
     */
    public function getCompanyListByWuYi(SaveThirdAccountVO $accountThirdVO)
    {
        $result = AccountClient::getCompanyListByWuYi($accountThirdVO);
        return $result;
    }