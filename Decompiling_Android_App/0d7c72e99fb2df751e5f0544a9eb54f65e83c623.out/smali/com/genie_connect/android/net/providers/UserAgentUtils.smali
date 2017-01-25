.class public Lcom/genie_connect/android/net/providers/UserAgentUtils;
.super Ljava/lang/Object;
.source "UserAgentUtils.java"

# interfaces
.implements Lcom/genie_connect/common/net/NetworkHeaders;


# static fields
.field private static final CHROME_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.13 (KHTML, like Gecko) Chrome/24.0.1290.1 Safari/537.13"

.field private static final CONNECTION_METHOD_OFFLINE:Ljava/lang/String; = "offline"

.field private static final CONNECTION_METHOD_OTHER:Ljava/lang/String; = "other"

.field private static final CONNECTION_METHOD_WIFI:Ljava/lang/String; = "wifi"

.field private static final FORCE_GZIP:Ljava/lang/String; = "x_gc_gzip"

.field private static sInstance:Lcom/genie_connect/android/net/providers/UserAgentUtils;

.field private static final sLockObject:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->sLockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private getCurrentConnectionType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 87
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 90
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 91
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 92
    const-string/jumbo v3, "wifi"

    .line 103
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return-object v3

    .line 94
    .restart local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    const-string v3, "other"

    goto :goto_0

    .line 97
    :cond_1
    const-string v3, "offline"

    goto :goto_0

    .line 100
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "offline"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "offline"

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/genie_connect/android/net/providers/UserAgentUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    sget-object v0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->sInstance:Lcom/genie_connect/android/net/providers/UserAgentUtils;

    if-nez v0, :cond_1

    .line 225
    sget-object v1, Lcom/genie_connect/android/net/providers/UserAgentUtils;->sLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 226
    :try_start_0
    sget-object v0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->sInstance:Lcom/genie_connect/android/net/providers/UserAgentUtils;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/genie_connect/android/net/providers/UserAgentUtils;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->sInstance:Lcom/genie_connect/android/net/providers/UserAgentUtils;

    .line 229
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_1
    sget-object v0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->sInstance:Lcom/genie_connect/android/net/providers/UserAgentUtils;

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getTidyCodeVersionString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 172
    sget v3, Lcom/eventgenie/android/R$string;->library_build:I

    invoke-direct {p0, v3}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Build: "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "build":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "buildArr":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 176
    :cond_0
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 181
    .local v2, "version":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 178
    .end local v2    # "version":Ljava/lang/String;
    :cond_1
    const-string v2, "n/a"

    .restart local v2    # "version":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public getChromeBrowserUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.13 (KHTML, like Gecko) Chrome/24.0.1290.1 Safari/537.13"

    return-object v0
.end method

.method public getGmUserAgent()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x3b

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 113
    .local v3, "defaultPrefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/help/BuildInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "apkVersion":Ljava/lang/String;
    invoke-direct {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getTidyCodeVersionString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "codeVersion":Ljava/lang/String;
    iget-object v9, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 121
    iget-object v9, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    invoke-direct {p0, v10}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "dataVersion":Ljava/lang/String;
    :goto_0
    const/4 v7, -0x1

    .line 131
    .local v7, "screenWidth":I
    const/4 v6, -0x1

    .line 134
    .local v6, "screenHeight":I
    :try_start_0
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 135
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 136
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 138
    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 139
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "wm":Landroid/view/WindowManager;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getCurrentConnectionType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    const/16 v9, 0x7b

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const/16 v9, 0x78

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const/16 v9, 0x7d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 125
    .end local v2    # "dataVersion":Ljava/lang/String;
    .end local v6    # "screenHeight":I
    .end local v7    # "screenWidth":I
    :cond_0
    const-string v2, "LIVE"

    .restart local v2    # "dataVersion":Ljava/lang/String;
    goto/16 :goto_0

    .line 140
    .restart local v6    # "screenHeight":I
    .restart local v7    # "screenWidth":I
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public declared-synchronized getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "currentLocale":Ljava/lang/String;
    iget-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mCurrentLocale:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 188
    iput-object v1, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mCurrentLocale:Ljava/lang/String;

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/BuildInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "appVersion":Ljava/lang/String;
    sget v3, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-direct {p0, v3}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {p0}, Lcom/genie_connect/android/net/providers/UserAgentUtils;->getTidyCodeVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v3, " (Android; Android OS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v3, "; API "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mCurrentLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v3, "x_gc_gzip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mUserAgent:Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 190
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mCurrentLocale:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mUserAgent:Ljava/lang/String;

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/genie_connect/android/net/providers/UserAgentUtils;->mUserAgent:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v1    # "currentLocale":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
