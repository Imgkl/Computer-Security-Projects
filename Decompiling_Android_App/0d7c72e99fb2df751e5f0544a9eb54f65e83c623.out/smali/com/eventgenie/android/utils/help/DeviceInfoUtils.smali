.class public final Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    }
.end annotation


# static fields
.field private static final ACCESS_GROUP_DEVELOPERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACCESS_GROUP_SUPPORT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLUESTACKS_CLIENT_ID:Ljava/lang/String; = "android-bluestacks"

.field private static final GOOGLE_PLAY_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final MANUFACTURER_AMAZON:Ljava/lang/String; = "Amazon"

.field private static final OS_BLACKBERRY_10:Ljava/lang/String; = "qnx"


# instance fields
.field private final mDisplayDensity:F

.field private final mDisplayDensityDpi:I

.field private final mDisplayHeight:I

.field private final mDisplaySmallestWidth:I

.field private final mDisplaySmallestWidthInDp:I

.field private final mDisplayWidth:I

.field private mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field private final mIsAmazon:Z

.field private final mIsBackCameraPresent:Z

.field private final mIsBlackberry:Z

.field private final mIsBlueStacks:Z

.field private final mIsBluetoothLowEnergyPresent:Z

.field private final mIsGooglePlayInstalled:Z

.field private final mIsGpsPresent:Z

.field private final mIsHardMenuKeyPresent:Z

.field private final mIsNfcPresent:Z

.field private final mIsScreenLong:Z

.field private final mIsWifiPresent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->populateAccessGroupDevelopers()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->ACCESS_GROUP_DEVELOPERS:Ljava/util/Set;

    .line 54
    invoke-static {}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->populateAccessGroupSupport()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->ACCESS_GROUP_SUPPORT:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v2, "qnx"

    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBlackberry:Z

    .line 83
    const-string v2, "Amazon"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsAmazon:Z

    .line 84
    const-string v2, "android-bluestacks"

    const-string v3, "ro.com.google.clientidbase"

    const-string v4, ""

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBlueStacks:Z

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayWidth:I

    .line 88
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayHeight:I

    .line 89
    iget v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayWidth:I

    iget v3, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplaySmallestWidth:I

    .line 90
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayDensity:F

    .line 91
    iget v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplaySmallestWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayDensity:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplaySmallestWidthInDp:I

    .line 92
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayDensityDpi:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsScreenLong:Z

    .line 98
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->detectPermanentMenuKey(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsHardMenuKeyPresent:Z

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBackCameraPresent:Z

    .line 102
    const-string v2, "android.hardware.wifi"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsWifiPresent:Z

    .line 103
    const-string v2, "android.hardware.location.gps"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsGpsPresent:Z

    .line 104
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->performBluetoothLowEnergyCheck(Landroid/content/pm/PackageManager;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBluetoothLowEnergyPresent:Z

    .line 105
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->performGooglePlayCheck(Landroid/content/pm/PackageManager;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsGooglePlayInstalled:Z

    .line 106
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->performNfcCheck(Landroid/content/pm/PackageManager;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsNfcPresent:Z

    .line 108
    iget-boolean v2, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsGooglePlayInstalled:Z

    if-nez v2, :cond_0

    .line 109
    const-string v2, "^ APP: This device does not have GooglePlay installed - Certain feautures will be disabled."

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ APP: DeviceInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 115
    return-void

    .line 94
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static detectPermanentMenuKey(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 262
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 267
    :goto_0
    return v0

    .line 264
    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAtLeastApiLevel(I)Z
    .locals 1
    .param p0, "targetApiLevel"    # I

    .prologue
    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static performBluetoothLowEnergyCheck(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "methodResult":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 280
    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static performGooglePlayCheck(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 292
    .local v1, "methodResult":Z
    :try_start_0
    const-string v2, "com.android.vending"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    const/4 v1, 0x1

    .line 298
    :goto_0
    return v1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static performNfcCheck(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, "methodResult":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 305
    const-string v1, "android.hardware.nfc"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 310
    :goto_0
    return v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static populateAccessGroupDevelopers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 316
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "c12716e843725d569a58c0dc9f28c6e3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v1, "d453bc9f251c1c0962c8683b15cdc601"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    const-string v1, "ef09babe58a2cdc5e2e8723e2c19b9d9"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v1, "13e20a9c7f119bb9f623113fd66d5358"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    const-string v1, "98406e0507d666647f5646f2c63047c3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    return-object v0
.end method

.method private static populateAccessGroupSupport()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 329
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "56345a8c5adb1be400719bfa6688140f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v1, "27a63d3772187bae6b26b8a7cca36d5c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v1, "b4aaa2aec60cd9e499da25b109a872fd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    return-object v0
.end method


# virtual methods
.method public getDisplayDensity()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayDensity:F

    return v0
.end method

.method public getDisplayDensityDpi()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayDensityDpi:I

    return v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayHeight:I

    return v0
.end method

.method public getDisplaySmallestWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplaySmallestWidth:I

    return v0
.end method

.method public getDisplaySmallestWidthInDp()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplaySmallestWidthInDp:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayWidth:I

    return v0
.end method

.method public declared-synchronized getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    .line 145
    :try_start_1
    sget-object v4, Lcom/eventgenie/android/utils/constants/RegularExpressions;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    .line 146
    .local v4, "emailPattern":Ljava/util/regex/Pattern;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 147
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v5, "emails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 151
    .local v9, "md5Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v2, v6

    .line 152
    .local v0, "account":Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 153
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .local v3, "email":Ljava/lang/String;
    invoke-static {v3}, Lcom/genie_connect/common/utils/crypt/HashHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 180
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v3    # "email":Ljava/lang/String;
    .end local v4    # "emailPattern":Ljava/util/regex/Pattern;
    .end local v5    # "emails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "len$":I
    .end local v9    # "md5Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 183
    :cond_2
    :goto_2
    :try_start_2
    iget-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    if-nez v10, :cond_3

    .line 184
    sget-object v10, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    iput-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 187
    :cond_3
    iget-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v10

    .line 161
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v2    # "arr$":[Landroid/accounts/Account;
    .restart local v4    # "emailPattern":Ljava/util/regex/Pattern;
    .restart local v5    # "emails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "len$":I
    .restart local v9    # "md5Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 162
    .local v8, "md5":Ljava/lang/String;
    sget-object v10, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->ACCESS_GROUP_DEVELOPERS:Ljava/util/Set;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 163
    sget-object v10, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->DEVELOPER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    iput-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 168
    .end local v8    # "md5":Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    if-nez v10, :cond_8

    .line 169
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 170
    .restart local v8    # "md5":Ljava/lang/String;
    sget-object v10, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->ACCESS_GROUP_SUPPORT:Ljava/util/Set;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 171
    sget-object v10, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    iput-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    .line 177
    .end local v8    # "md5":Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    if-nez v10, :cond_2

    .line 178
    sget-object v10, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    iput-object v10, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 143
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v2    # "arr$":[Landroid/accounts/Account;
    .end local v4    # "emailPattern":Ljava/util/regex/Pattern;
    .end local v5    # "emails":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "len$":I
    .end local v9    # "md5Set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public isBackCameraPresent()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBackCameraPresent:Z

    return v0
.end method

.method public isBluetoothLowEnergyPresent()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBluetoothLowEnergyPresent:Z

    return v0
.end method

.method public isGooglePlayInstalled()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsGooglePlayInstalled:Z

    return v0
.end method

.method public isGpsPresent()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsGpsPresent:Z

    return v0
.end method

.method public isHardMenuButtonPresent()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsHardMenuKeyPresent:Z

    return v0
.end method

.method public isNfcPresent()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsNfcPresent:Z

    return v0
.end method

.method public isScreenLong()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsScreenLong:Z

    return v0
.end method

.method public isThisAmazonHardware()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsAmazon:Z

    return v0
.end method

.method public isThisBlackberryHardware()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBlackberry:Z

    return v0
.end method

.method public isThisBluestacksHardware()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBlueStacks:Z

    return v0
.end method

.method public isWifiPresent()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsWifiPresent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfoUtils [mIsGooglePlayInstalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsGooglePlayInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBackCameraPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBackCameraPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsNfcPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsNfcPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsGpsPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsGpsPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBluetoothLowEnergyPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBluetoothLowEnergyPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplaySmallestWidthInDp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplaySmallestWidthInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplaySmallestWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplaySmallestWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mDisplayDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBlackberry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBlackberry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsAmazon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsAmazon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsBlueStacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsBlueStacks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsScreenLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsScreenLong:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasPermanentMenuKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mIsHardMenuKeyPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInternalAccessGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->mInternalAccessGroup:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
