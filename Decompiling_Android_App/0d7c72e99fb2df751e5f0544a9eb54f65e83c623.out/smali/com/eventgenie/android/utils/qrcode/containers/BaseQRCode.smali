.class public abstract Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;
.super Ljava/lang/Object;
.source "BaseQRCode.java"


# static fields
.field private static final QRCODE_GENIE_PREFIX:Ljava/lang/String; = "genie-"

.field public static final QRCODE_GENIE_TYPE_DEEPLINK:Ljava/lang/String; = "genie-deep-link"

.field public static final QRCODE_GENIE_TYPE_GENIE_INTENT_VIEW:Ljava/lang/String; = "genie-genie-intent-view"

.field public static final QRCODE_GENIE_TYPE_INVALID:Ljava/lang/String; = "genie-invalid"

.field public static final QRCODE_TYPE_CONTACT:Ljava/lang/String; = "type_contact_card"

.field public static final QRCODE_TYPE_URL:Ljava/lang/String; = "type_url"


# instance fields
.field private final mCodeAsString:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "codeAsString"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;->mCodeAsString:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getCodeAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;->mCodeAsString:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getQRCodeType()Lcom/eventgenie/android/utils/qrcode/containers/QRCodeType;
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/qrcode/containers/BaseQRCode;->getCodeAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
