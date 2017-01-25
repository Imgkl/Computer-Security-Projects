.class Lcom/julysystems/appx/AppXConstants;
.super Ljava/lang/Object;
.source "AppXConstants.java"


# static fields
.field protected static CONNECTION_ERR_MSG:Ljava/lang/String; = null

.field protected static final DEFAULT_INTENT_SERVICE_CLASS_NAME:Ljava/lang/String; = ".GCMIntentService"

.field protected static final ERROR_ACCOUNT_MISSING:Ljava/lang/String; = "ACCOUNT_MISSING"

.field protected static final ERROR_AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATION_FAILED"

.field protected static final ERROR_INVALID_PARAMETERS:Ljava/lang/String; = "INVALID_PARAMETERS"

.field protected static final ERROR_INVALID_SENDER:Ljava/lang/String; = "INVALID_SENDER"

.field protected static final ERROR_PHONE_REGISTRATION_ERROR:Ljava/lang/String; = "PHONE_REGISTRATION_ERROR"

.field protected static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field protected static final EXTRA_APPLICATION_PENDING_INTENT:Ljava/lang/String; = "app"

.field protected static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field protected static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field protected static final EXTRA_SENDER:Ljava/lang/String; = "sender"

.field protected static final EXTRA_SPECIAL_MESSAGE:Ljava/lang/String; = "message_type"

.field protected static final EXTRA_TOTAL_DELETED:Ljava/lang/String; = "total_deleted"

.field protected static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field protected static final INTENT_FROM_GCM_LIBRARY_RETRY:Ljava/lang/String; = "com.google.android.gcm.intent.RETRY"

.field protected static final INTENT_FROM_GCM_MESSAGE:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field protected static final INTENT_FROM_GCM_REGISTRATION_CALLBACK:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field protected static final INTENT_TO_GCM_REGISTRATION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field protected static final INTENT_TO_GCM_UNREGISTRATION:Ljava/lang/String; = "com.google.android.c2dm.intent.UNREGISTER"

.field protected static NETWORK_ERR_MSG:Ljava/lang/String; = null

.field protected static NETWORK_SERVER_ERR_MSG:Ljava/lang/String; = null

.field protected static final PERMISSION_GCM_INTENTS:Ljava/lang/String; = "com.google.android.c2dm.permission.SEND"

.field protected static SERVER_ERR_MSG:Ljava/lang/String; = null

.field protected static final VALUE_DELETED_MESSAGES:Ljava/lang/String; = "deleted_messages"

.field protected static additionalUrlSuffix:Ljava/lang/String; = null

.field protected static appXEngine:Lcom/julysystems/appx/AppX; = null

.field protected static final appXVersionString:Ljava/lang/String; = "1.2.5"

.field protected static appxPushServerUrl:Ljava/lang/String; = null

.field protected static appxRegistrationUrl:Ljava/lang/String; = null

.field protected static baseUrl:Ljava/lang/String; = null

.field protected static connectionTimeOut:I = 0x0

.field protected static cornerRadius:I = 0x0

.field protected static customActivity:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/julysystems/appx/AppXBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected static dm:Landroid/util/DisplayMetrics; = null

.field protected static drawablePackageName:Ljava/lang/String; = null

.field protected static erroMsg:Ljava/lang/String; = null

.field protected static focusState:Landroid/graphics/drawable/GradientDrawable; = null

.field protected static fontMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field protected static final headerFontSize:F = 16.0f

.field protected static final imageExpiry:I = 0x5460

.field protected static intialize:Z = false

.field protected static isCachingEnabled:Z = false

.field protected static isLegacyMode:Z = false

.field public static isRegIdSent:Z = false

.field protected static magicNumber:I = 0x0

.field protected static menuIconMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static final pageCacheDuration:I = 0xb4

.field protected static final pageExpiry:I = 0x15180

.field protected static final permanentCacheDuration:I = 0x1e13380

.field protected static pressedState:Landroid/graphics/drawable/GradientDrawable; = null

.field protected static pushActivityClass:Ljava/lang/String; = null

.field protected static final saltValue:Ljava/lang/String; = "@99xcl!ents3cr3t"

.field protected static splashScreenActivity:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/julysystems/appx/AppXBaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected static final tempImageCacheDuration:I = 0x15180

.field protected static testMemLeak:Z = false

.field protected static final textFontSize:F = 14.0f

.field protected static url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/julysystems/appx/AppXConstants;->isCachingEnabled:Z

    .line 37
    sput-boolean v2, Lcom/julysystems/appx/AppXConstants;->testMemLeak:Z

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->drawablePackageName:Ljava/lang/String;

    .line 46
    sput-boolean v2, Lcom/julysystems/appx/AppXConstants;->intialize:Z

    .line 51
    const-string v0, "You appear to have lost your data connection. Please check and relaunch the application. (Error Code: 1021)"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->NETWORK_ERR_MSG:Ljava/lang/String;

    .line 55
    const-string v0, "Error retrieving data from the server. The server may be facing a temporary issue. Please retry after sometime or try accessing other sections. (Error Code: 1022)"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->CONNECTION_ERR_MSG:Ljava/lang/String;

    .line 59
    const-string v0, "Unable to connect to the server. You may have lost your data connection or the server may be facing a temporary issue. Please retry after sometime. (Error Code: 1023)"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->NETWORK_SERVER_ERR_MSG:Ljava/lang/String;

    .line 63
    const-string v0, "Error retrieving data from the server. The server may be facing a temporary issue. Please retry after sometime or try accessing other sections. (Error Code: 1024)"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->SERVER_ERR_MSG:Ljava/lang/String;

    .line 70
    const v0, 0x4d3c2b1a    # 1.97308832E8f

    sput v0, Lcom/julysystems/appx/AppXConstants;->magicNumber:I

    .line 98
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->splashScreenActivity:Ljava/lang/Class;

    .line 102
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->appXEngine:Lcom/julysystems/appx/AppX;

    .line 110
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->focusState:Landroid/graphics/drawable/GradientDrawable;

    .line 111
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->pressedState:Landroid/graphics/drawable/GradientDrawable;

    .line 122
    sput-boolean v2, Lcom/julysystems/appx/AppXConstants;->isLegacyMode:Z

    .line 125
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->additionalUrlSuffix:Ljava/lang/String;

    .line 129
    const-string v0, "https://emsp.cisco.com/appx/registerApp"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->appxRegistrationUrl:Ljava/lang/String;

    .line 130
    const-string v0, "https://emsp.cisco.com/appx/registerPush"

    sput-object v0, Lcom/julysystems/appx/AppXConstants;->appxPushServerUrl:Ljava/lang/String;

    .line 140
    sput-object v1, Lcom/julysystems/appx/AppXConstants;->pushActivityClass:Ljava/lang/String;

    .line 142
    const/16 v0, 0x19

    sput v0, Lcom/julysystems/appx/AppXConstants;->cornerRadius:I

    .line 144
    sput-boolean v2, Lcom/julysystems/appx/AppXConstants;->isRegIdSent:Z

    .line 267
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
