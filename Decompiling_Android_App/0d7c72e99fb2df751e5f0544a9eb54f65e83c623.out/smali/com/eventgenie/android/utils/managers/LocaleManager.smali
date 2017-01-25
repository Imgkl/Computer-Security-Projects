.class public Lcom/eventgenie/android/utils/managers/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static final DEFAULT_LOCALE_LANGUAGE:Ljava/lang/String; = "en"

.field public static final EVENT_DEFAULT_LOCALE_VALUE:Ljava/lang/String; = "_default_locale_"

.field private static final KNOWN_LOCALES_LABELS:[Ljava/lang/String;

.field private static final KNOWN_LOCALES_VALUES:[Ljava/lang/String;


# instance fields
.field private mConfigLocale:Ljava/lang/String;

.field private mLocaleCountry:Ljava/lang/String;

.field private mLocaleLanguage:Ljava/lang/String;

.field private mPreferencesLocale:Ljava/lang/String;

.field private mUsedLocale:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Event Default"

    aput-object v1, v0, v3

    const-string v1, "English (UK)"

    aput-object v1, v0, v4

    const-string v1, "English (US)"

    aput-object v1, v0, v5

    const-string v1, "French"

    aput-object v1, v0, v6

    const-string v1, "German"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Spanish"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Italian"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Portuguese"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Russian"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Chinese (Simplified)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Chinese (Traditional)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Japanese"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Korean"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Thai"

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/utils/managers/LocaleManager;->KNOWN_LOCALES_LABELS:[Ljava/lang/String;

    .line 66
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_default_locale_"

    aput-object v1, v0, v3

    const-string v1, "en_GB"

    aput-object v1, v0, v4

    const-string v1, "en_US"

    aput-object v1, v0, v5

    const-string v1, "fr_FR"

    aput-object v1, v0, v6

    const-string v1, "de_DE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "es_ES"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "it_IT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pt_PT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ru_RU"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "zh_CN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "zh_TW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ja_JP"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ko_KR"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "th_TH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/eventgenie/android/utils/managers/LocaleManager;->KNOWN_LOCALES_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixEmptyCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string v0, "GB"

    goto :goto_0

    .line 195
    :cond_1
    const-string v0, "fr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    const-string v0, "FR"

    goto :goto_0

    .line 198
    :cond_2
    const-string v0, "de"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "DE"

    goto :goto_0

    .line 201
    :cond_3
    const-string/jumbo v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    const-string v0, "CN"

    goto :goto_0

    .line 204
    :cond_4
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    const-string v0, "PT"

    goto :goto_0

    .line 208
    :cond_5
    const-string v0, ""

    goto :goto_0
.end method

.method private static getLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 1
    .param p0, "localeLanguage"    # Ljava/lang/String;
    .param p1, "localeCountry"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAvailableLocaleLabels(Lcom/genie_connect/android/db/config/AppConfig;)[Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 91
    sget-object v0, Lcom/eventgenie/android/utils/managers/LocaleManager;->KNOWN_LOCALES_LABELS:[Ljava/lang/String;

    return-object v0
.end method

.method public getAvailableLocaleValues(Lcom/genie_connect/android/db/config/AppConfig;)[Ljava/lang/String;
    .locals 1
    .param p1, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 95
    sget-object v0, Lcom/eventgenie/android/utils/managers/LocaleManager;->KNOWN_LOCALES_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public getConfigLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mConfigLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mUsedLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLocaleObject()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getLocaleCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mLocaleCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mLocaleLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefsLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mPreferencesLocale:Ljava/lang/String;

    return-object v0
.end method

.method public updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V
    .locals 10
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "appConfig"    # Lcom/genie_connect/android/db/config/AppConfig;
    .param p3, "baseContext"    # Landroid/content/Context;

    .prologue
    .line 124
    if-nez p2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    if-eqz p1, :cond_0

    .line 126
    if-eqz p3, :cond_0

    .line 128
    iget-object v7, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "currentLocale":Ljava/lang/String;
    invoke-static {p3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 132
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v3, ""

    .line 133
    .local v3, "newLocaleLanguage":Ljava/lang/String;
    const-string v2, ""

    .line 135
    .local v2, "newLocaleCountry":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mConfigLocale:Ljava/lang/String;

    .line 137
    const-string v7, "prefered_language"

    const-string v8, "_default_locale_"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "potentialLocale":Ljava/lang/String;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "false"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 139
    :cond_2
    const-string v7, "_default_locale_"

    iput-object v7, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mPreferencesLocale:Ljava/lang/String;

    .line 147
    :goto_1
    iget-object v7, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mPreferencesLocale:Ljava/lang/String;

    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "_default_locale_"

    iget-object v8, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mPreferencesLocale:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 148
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mPreferencesLocale:Ljava/lang/String;

    .line 153
    .local v6, "tmpLocale":Ljava/lang/String;
    :goto_2
    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 154
    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 155
    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 160
    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4

    .line 161
    :cond_3
    const-string v3, "en"

    .line 164
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_6

    .line 165
    :cond_5
    invoke-static {v3, v2}, Lcom/eventgenie/android/utils/managers/LocaleManager;->fixEmptyCountry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_6
    iput-object v3, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mLocaleLanguage:Ljava/lang/String;

    .line 169
    iput-object v2, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mLocaleCountry:Ljava/lang/String;

    .line 171
    iput-object v6, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mUsedLocale:Ljava/lang/String;

    .line 173
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 174
    invoke-static {v3, v2}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getLocale(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 176
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ LOCALE: Setting locale to \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'. Current locale is \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 179
    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 180
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 181
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 182
    invoke-static {v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->resetFormatting(Ljava/util/Locale;)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "locale":Ljava/util/Locale;
    .end local v6    # "tmpLocale":Ljava/lang/String;
    :cond_7
    iput-object v4, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mPreferencesLocale:Ljava/lang/String;

    goto/16 :goto_1

    .line 150
    :cond_8
    iget-object v6, p0, Lcom/eventgenie/android/utils/managers/LocaleManager;->mConfigLocale:Ljava/lang/String;

    .restart local v6    # "tmpLocale":Ljava/lang/String;
    goto/16 :goto_2

    .line 157
    :cond_9
    move-object v3, v6

    goto/16 :goto_3
.end method
