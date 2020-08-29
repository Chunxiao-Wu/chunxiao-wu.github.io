
//jquery的插件注册，可以在插件后加(jQuery,ChineseDistricts);来注册自己
//(function (factory)
//{
//    if (typeof define === 'function' && define.amd) {
//        alert(1)
//        define(['jquery', 'ChineseDistricts'], factory);
//    } else if (typeof exports === 'object') {
//        alert(2)
//        factory(require('jquery'), require('ChineseDistricts'));
//    } else {
//        factory(jQuery, ChineseDistricts);
//    }
//})

(function ($, ProCityTownData) {

    if (typeof ChineseDistricts === 'ProCityTownData') {
        throw new Error('文件"proCityTown.data.js"必须先引用');
    }
    var provinceData = ProCityTownData.Province;
    var cityData = ProCityTownData.City;
    var townData = ProCityTownData.Town;
    var defaultParams = {
        province: "",
        city: "",
        town: ""
    };

    ///绑定镇区
    var BindTown = function ($townObj, params) {
        if ($townObj.length == 0) {
            return;
        }
        if (params.town === false) {
            $townObj.remove;
            return;
        }
        $townObj.children("option").remove();
        var options = "";
        if ($townObj.children("option").length == 0) {
            //options = "<option value=''>---县区---</option>";
        }
        var ck = $townObj.prev("select").find("option:selected").attr("data-ck");
        $.each(townData, function (index, itemData) {
            var town = itemData.town;
            var thisck = itemData.ck;
            if (ck != thisck) {
                return true;
            }
            var selected = false;
            if (params.town == town) {
                selected = true;
            }
            options += "<option " + (selected ? " selected " : "") + " value=\"" + town + "\">" + town + "</option>";
            return true;
        });
        $townObj.html(options);
    };

    ///绑定市
    var BindCity = function ($cityObj, params) {
        if ($cityObj.length == 0) {
            return;
        }
        if (params.city === false) {
            $cityObj.remove;
            return;
        }
        $cityObj.children("option").remove();
        var options = "";
        if ($cityObj.children("option").length == 0) {
            //options = "<option value=''>---市---</option>";
        }
        var pk = $cityObj.prev("select").find("option:selected").attr("data-pk");
        $.each(cityData, function (index, itemData) {
            var city = itemData.city;
            var thispk = itemData.pk;
            var ck = itemData.ck;
            if (pk != thispk) {
                return true;
            }
            var selected = false;
            if (params.city == city) {
                selected = true;
            }
            options += "<option " + (selected ? " selected " : "") + " value=\"" + city + "\" data-ck=\"" + ck + "\">" + city + "</option>";
            return true;
        });
        $cityObj.html(options);
        BindTown($cityObj.next("select"), params);
        if (!$cityObj.data("regEvent")) {
            $cityObj.on("change", function () {
                BindTown($cityObj.next("select"), params);
                $cityObj.data("regEvent", 1);
            })
        }
    };

    ///绑定省
    var BindProvince = function ($proviceObj, params) {
        if ($proviceObj.length == 0) {
            return;
        }
        var options = "";
        if ($proviceObj.children("option").length == 0) {
            //options = "<option value=''>---省---</option>";
        }
        $.each(provinceData, function (index, itemData) {
            var province = itemData.province;
            var pk = itemData.pk;
            var selected = false;
            if (params.province == province) {
                selected = true;
            }
            options += "<option " + (selected ? " selected " : "") + " value=\"" + province + "\" data-pk=\"" + pk + "\">" + province + "</option>";
            return true;
        });
        $proviceObj.html(options);
        BindCity($proviceObj.next("select"), params);
        if (!$proviceObj.data("regEvent")) {
            $proviceObj.on("change", function () {
                BindCity($proviceObj.next("select"), params);
                $proviceObj.data("regEvent", 1);
            })
        }
    };


    var InitSelect = function ($obj, params) {
        var $select = $obj.find("select");
        if (params.showTown) {
            if ($select.length < 3) {
                throw new Error("容器中必须有3个Select标签");
            }
        }
        else {
            if ($select.length < 2) {
                throw new Error("容器中必须有2个Select标签");
            }
        }
        BindProvince($select.eq(0), params);
    };


    $.fn.InitProvinceCityTown = function (params) {
        var $this = $(this);
        params = $.extend({}, defaultParams, params);
        InitSelect($this, params);
    };
})(jQuery, ProCityTownData);