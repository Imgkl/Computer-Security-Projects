.class public Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;
.super Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;
.source "QRCodeCompuSystems.java"


# static fields
.field private static final COMPUSYSTEMS_TEMPLATE:Ljava/lang/String; = "https://www.compusystems.com/servlet/ar?evt_uid=284&site=TRKR&regid=##VISITOR_IMPORTKEY##&comid="

.field public static final FIELD_COMPANY_ID:I = 0x4

.field public static final FIELD_FIRST_NAME:I = 0x2

.field public static final FIELD_LAST_NAME:I = 0x3

.field public static final FIELD_PREAMBLE:I = 0x0

.field public static final FIELD_UNKNOWN_1:I = 0x1


# instance fields
.field private final mCompanyId:Ljava/lang/String;

.field private final mFirstName:Ljava/lang/String;

.field private final mLastName:Ljava/lang/String;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Ljava/lang/String;)V
    .locals 5
    .param p1, "visitor"    # Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .param p2, "codeAsString"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p2}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeUrl;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;-><init>(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/utils/helper/WifiNetworkSettings;)V

    .line 60
    .local v2, "rep":Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;
    const-string v3, "https://www.compusystems.com/servlet/ar?evt_uid=284&site=TRKR&regid=##VISITOR_IMPORTKEY##&comid="

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/utils/string/GenieMobileTokenReplacer;->replaceTokens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "finalContent":Ljava/lang/String;
    const-string v3, "\\|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "array":[Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mFirstName:Ljava/lang/String;

    .line 64
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mLastName:Ljava/lang/String;

    .line 65
    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mCompanyId:Ljava/lang/String;

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mCompanyId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mUrl:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private static sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const-string v0, ""

    .line 74
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mCompanyId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;->COMPUSYSTEMS:Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/QRCodeCompuSystems;->mUrl:Ljava/lang/String;

    return-object v0
.end method
