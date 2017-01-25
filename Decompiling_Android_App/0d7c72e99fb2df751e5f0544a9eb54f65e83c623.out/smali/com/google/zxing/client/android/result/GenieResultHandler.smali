.class public abstract Lcom/google/zxing/client/android/result/GenieResultHandler;
.super Ljava/lang/Object;
.source "GenieResultHandler.java"


# static fields
.field private static final ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

.field private static final ADDRESS_TYPE_VALUES:[I

.field private static final EMAIL_TYPE_STRINGS:[Ljava/lang/String;

.field private static final EMAIL_TYPE_VALUES:[I

.field private static final GOOGLE_SHOPPER_ACTIVITY:Ljava/lang/String; = "com.google.android.apps.shopper.results.SearchResultsActivity"

.field private static final GOOGLE_SHOPPER_PACKAGE:Ljava/lang/String; = "com.google.android.apps.shopper"

.field private static final MARKET_REFERRER_SUFFIX:Ljava/lang/String; = "&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

.field private static final MARKET_URI_PREFIX:Ljava/lang/String; = "market://details?id="

.field public static final MAX_BUTTON_COUNT:I = 0x4

.field private static final NO_TYPE:I = -0x1

.field private static final PHONE_TYPE_STRINGS:[Ljava/lang/String;

.field private static final PHONE_TYPE_VALUES:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final customProductSearch:Ljava/lang/String;

.field private final rawResult:Lcom/google/zxing/Result;

.field private final result:Lcom/google/zxing/client/result/ParsedResult;

.field private final shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 56
    const-class v0, Lcom/google/zxing/client/android/result/GenieResultHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->TAG:Ljava/lang/String;

    .line 65
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string/jumbo v1, "work"

    aput-object v1, v0, v5

    const-string v1, "mobile"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    .line 66
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string/jumbo v1, "work"

    aput-object v1, v0, v5

    const-string v1, "mobile"

    aput-object v1, v0, v3

    const-string v1, "fax"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "pager"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "main"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "home"

    aput-object v1, v0, v4

    const-string/jumbo v1, "work"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    .line 68
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->EMAIL_TYPE_VALUES:[I

    .line 73
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->PHONE_TYPE_VALUES:[I

    .line 81
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->ADDRESS_TYPE_VALUES:[I

    return-void

    .line 68
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data

    .line 73
    :array_1
    .array-data 4
        0x1
        0x3
        0x2
        0x4
        0x6
        0xc
    .end array-data

    .line 81
    :array_2
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/zxing/client/android/result/GenieResultHandler$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/result/GenieResultHandler$1;-><init>(Lcom/google/zxing/client/android/result/GenieResultHandler;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->shopperMarketListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    iput-object p2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    .line 109
    iput-object p1, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    .line 110
    iput-object p3, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->rawResult:Lcom/google/zxing/Result;

    .line 111
    invoke-direct {p0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->parseCustomSearchURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->customProductSearch:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private static doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 4
    .param p0, "typeString"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    const/4 v2, -0x1

    .line 295
    if-nez p0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v2

    .line 298
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 299
    aget-object v1, p1, v0

    .line 300
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    :cond_2
    aget v2, p2, v0

    goto :goto_0

    .line 298
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseCustomSearchURL()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 497
    iget-object v3, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 498
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_custom_product_search"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "customProductSearch":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 503
    .end local v0    # "customProductSearch":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 491
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 492
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    :cond_0
    return-void
.end method

.method private static toAddressContractType(Ljava/lang/String;)I
    .locals 2
    .param p0, "typeString"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->ADDRESS_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/android/result/GenieResultHandler;->ADDRESS_TYPE_VALUES:[I

    invoke-static {p0, v0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static toEmailContractType(Ljava/lang/String;)I
    .locals 2
    .param p0, "typeString"    # Ljava/lang/String;

    .prologue
    .line 283
    sget-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->EMAIL_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/android/result/GenieResultHandler;->EMAIL_TYPE_VALUES:[I

    invoke-static {p0, v0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static toPhoneContractType(Ljava/lang/String;)I
    .locals 2
    .param p0, "typeString"    # Ljava/lang/String;

    .prologue
    .line 287
    sget-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->PHONE_TYPE_STRINGS:[Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/android/result/GenieResultHandler;->PHONE_TYPE_VALUES:[I

    invoke-static {p0, v0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->doToContractType(Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method


# virtual methods
.method final addContact([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "nicknames"    # [Ljava/lang/String;
    .param p3, "pronunciation"    # Ljava/lang/String;
    .param p4, "phoneNumbers"    # [Ljava/lang/String;
    .param p5, "phoneTypes"    # [Ljava/lang/String;
    .param p6, "emails"    # [Ljava/lang/String;
    .param p7, "emailTypes"    # [Ljava/lang/String;
    .param p8, "note"    # Ljava/lang/String;
    .param p9, "instantMessenger"    # Ljava/lang/String;
    .param p10, "address"    # Ljava/lang/String;
    .param p11, "addressType"    # Ljava/lang/String;
    .param p12, "org"    # Ljava/lang/String;
    .param p13, "title"    # Ljava/lang/String;
    .param p14, "urls"    # [Ljava/lang/String;
    .param p15, "birthday"    # Ljava/lang/String;
    .param p16, "geo"    # [Ljava/lang/String;

    .prologue
    .line 211
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.INSERT_OR_EDIT"

    sget-object v14, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 212
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "vnd.android.cursor.item/contact"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v14, "name"

    if-eqz p1, :cond_1

    const/4 v13, 0x0

    aget-object v13, p1, v13

    :goto_0
    invoke-static {v6, v14, v13}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v13, "phonetic_name"

    move-object/from16 v0, p3

    invoke-static {v6, v13, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    array-length v13, v0

    :goto_1
    sget-object v14, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    array-length v14, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 218
    .local v9, "phoneCount":I
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_2
    if-ge v12, v9, :cond_3

    .line 219
    sget-object v13, Lcom/google/zxing/client/android/Contents;->PHONE_KEYS:[Ljava/lang/String;

    aget-object v13, v13, v12

    aget-object v14, p4, v12

    invoke-static {v6, v13, v14}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v12, v13, :cond_0

    .line 221
    aget-object v13, p5, v12

    invoke-static {v13}, Lcom/google/zxing/client/android/result/GenieResultHandler;->toPhoneContractType(Ljava/lang/String;)I

    move-result v10

    .line 222
    .local v10, "type":I
    if-ltz v10, :cond_0

    .line 223
    sget-object v13, Lcom/google/zxing/client/android/Contents;->PHONE_TYPE_KEYS:[Ljava/lang/String;

    aget-object v13, v13, v12

    invoke-virtual {v6, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    .end local v10    # "type":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 213
    .end local v9    # "phoneCount":I
    .end local v12    # "x":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 217
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 228
    .restart local v9    # "phoneCount":I
    .restart local v12    # "x":I
    :cond_3
    if-eqz p6, :cond_5

    move-object/from16 v0, p6

    array-length v13, v0

    :goto_3
    sget-object v14, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    array-length v14, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 229
    .local v4, "emailCount":I
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v4, :cond_6

    .line 230
    sget-object v13, Lcom/google/zxing/client/android/Contents;->EMAIL_KEYS:[Ljava/lang/String;

    aget-object v13, v13, v12

    aget-object v14, p6, v12

    invoke-static {v6, v13, v14}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    if-eqz p7, :cond_4

    move-object/from16 v0, p7

    array-length v13, v0

    if-ge v12, v13, :cond_4

    .line 232
    aget-object v13, p7, v12

    invoke-static {v13}, Lcom/google/zxing/client/android/result/GenieResultHandler;->toEmailContractType(Ljava/lang/String;)I

    move-result v10

    .line 233
    .restart local v10    # "type":I
    if-ltz v10, :cond_4

    .line 234
    sget-object v13, Lcom/google/zxing/client/android/Contents;->EMAIL_TYPE_KEYS:[Ljava/lang/String;

    aget-object v13, v13, v12

    invoke-virtual {v6, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    .end local v10    # "type":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 228
    .end local v4    # "emailCount":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 240
    .restart local v4    # "emailCount":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v2, "aggregatedNotes":Ljava/lang/StringBuilder;
    if-eqz p14, :cond_8

    .line 242
    move-object/from16 v3, p14

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v7, :cond_8

    aget-object v11, v3, v5

    .line 243
    .local v11, "url":Ljava/lang/String;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 244
    const/16 v13, 0xa

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 248
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v11    # "url":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x2

    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p15, v3, v13

    const/4 v13, 0x1

    aput-object p8, v3, v13

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_6
    if-ge v5, v7, :cond_a

    aget-object v1, v3, v5

    .line 249
    .local v1, "aNote":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 250
    const/16 v13, 0xa

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 253
    .end local v1    # "aNote":Ljava/lang/String;
    :cond_a
    if-eqz p2, :cond_c

    .line 254
    move-object/from16 v3, p2

    array-length v7, v3

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v7, :cond_c

    aget-object v8, v3, v5

    .line 255
    .local v8, "nickname":Ljava/lang/String;
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_b

    .line 256
    const/16 v13, 0xa

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 260
    .end local v8    # "nickname":Ljava/lang/String;
    :cond_c
    if-eqz p16, :cond_d

    .line 261
    const/16 v13, 0xa

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, p16, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2c

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget-object v14, p16, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_e

    .line 266
    const-string v13, "notes"

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v13, v14}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_e
    const-string v13, "im_handle"

    move-object/from16 v0, p9

    invoke-static {v6, v13, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v13, "postal"

    move-object/from16 v0, p10

    invoke-static {v6, v13, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz p11, :cond_f

    .line 272
    invoke-static/range {p11 .. p11}, Lcom/google/zxing/client/android/result/GenieResultHandler;->toAddressContractType(Ljava/lang/String;)I

    move-result v10

    .line 273
    .restart local v10    # "type":I
    if-ltz v10, :cond_f

    .line 274
    const-string v13, "postal_type"

    invoke-virtual {v6, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    .end local v10    # "type":I
    :cond_f
    const-string v13, "company"

    move-object/from16 v0, p12

    invoke-static {v6, v13, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v13, "job_title"

    move-object/from16 v0, p13

    invoke-static {v6, v13, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v6}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method final addEmailOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p1, "emails"    # [Ljava/lang/String;
    .param p2, "emailTypes"    # [Ljava/lang/String;

    .prologue
    .line 190
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v0 .. v16}, Lcom/google/zxing/client/android/result/GenieResultHandler;->addContact([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method final addPhoneOnlyContact([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p1, "phoneNumbers"    # [Ljava/lang/String;
    .param p2, "phoneTypes"    # [Ljava/lang/String;

    .prologue
    .line 186
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v16}, Lcom/google/zxing/client/android/result/GenieResultHandler;->addContact([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public areContentsSecure()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method final dialPhone(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 364
    return-void
.end method

.method final dialPhoneFromUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 368
    return-void
.end method

.method final fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->customProductSearch:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v1, p1

    .line 523
    :cond_0
    :goto_0
    return-object v1

    .line 511
    :cond_1
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 515
    :goto_1
    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->customProductSearch:Ljava/lang/String;

    const-string v3, "%s"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->rawResult:Lcom/google/zxing/Result;

    if-eqz v2, :cond_0

    .line 517
    const-string v2, "%f"

    iget-object v3, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 518
    const-string v2, "%t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->rawResult:Lcom/google/zxing/Result;

    invoke-static {v2}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 520
    .local v0, "parsedResultAgain":Lcom/google/zxing/client/result/ParsedResult;
    const-string v2, "%t"

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 512
    .end local v0    # "parsedResultAgain":Lcom/google/zxing/client/result/ParsedResult;
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract getButtonCount()I
.end method

.method public abstract getButtonText(I)I
.end method

.method final getDirections(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://maps.google."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/zxing/client/android/LocaleManager;->getCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/maps?f=d&daddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method public getDisplayContents()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "contents":Ljava/lang/String;
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getDisplayTitle()I
.end method

.method public final getResult()Lcom/google/zxing/client/result/ParsedResult;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    return-object v0
.end method

.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->result:Lcom/google/zxing/client/result/ParsedResult;

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleButtonPress(I)V
.end method

.method final hasCustomProductSearch()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->customProductSearch:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 480
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->rawLaunchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "ignored":Landroid/content/ActivityNotFoundException;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 484
    sget v2, Lcom/eventgenie/android/R$string;->msg_intent_failed:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 485
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method final openBookSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "isbn"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://books.google."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/zxing/client/android/LocaleManager;->getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/books?vid=isbn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 403
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method final openMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "geoURI"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method final openProductSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "upc"    # Ljava/lang/String;

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/zxing/client/android/LocaleManager;->getProductSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/m/products?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&source=zxing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 397
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 398
    return-void
.end method

.method final openURL(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 416
    const-string v2, "HTTP://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 421
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_1
    return-void

    .line 418
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "HTTPS://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 424
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ignored":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/google/zxing/client/android/result/GenieResultHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing available to handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method final rawLaunchIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    sget-object v0, Lcom/google/zxing/client/android/result/GenieResultHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 473
    :cond_0
    return-void
.end method

.method final searchMap(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 381
    move-object v0, p1

    .line 382
    .local v0, "query":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method final sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/zxing/client/android/result/GenieResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method final sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 320
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    :cond_0
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-static {v0, v1, p3}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "android.intent.extra.TEXT"

    invoke-static {v0, v1, p4}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 326
    return-void
.end method

.method final sendMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mmsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/zxing/client/android/result/GenieResultHandler;->sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method final sendMMSFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 353
    :cond_0
    const-string v1, "subject"

    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    sget v3, Lcom/eventgenie/android/R$string;->msg_default_mms_subject:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_0
    const-string v1, "sms_body"

    invoke-static {v0, v1, p3}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "compose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 360
    return-void

    .line 355
    :cond_1
    const-string v1, "subject"

    invoke-static {v0, v1, p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method final sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sms_body"

    invoke-static {v0, v1, p2}, Lcom/google/zxing/client/android/result/GenieResultHandler;->putExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "compose_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method final shareByEmail(Ljava/lang/String;)V
    .locals 4
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string v0, "mailto:"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    sget v3, Lcom/eventgenie/android/R$string;->msg_share_subject_line:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->sendEmailFromUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method final shareBySMS(Ljava/lang/String;)V
    .locals 4
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "smsto:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/zxing/client/android/result/GenieResultHandler;->activity:Landroid/app/Activity;

    sget v3, Lcom/eventgenie/android/R$string;->msg_share_subject_line:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->sendSMSFromUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method final webSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieResultHandler;->launchIntent(Landroid/content/Intent;)V

    .line 433
    return-void
.end method
