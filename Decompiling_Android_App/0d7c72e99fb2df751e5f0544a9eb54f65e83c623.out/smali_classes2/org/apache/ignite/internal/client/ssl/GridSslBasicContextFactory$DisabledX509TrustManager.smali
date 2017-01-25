.class Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$DisabledX509TrustManager;
.super Ljava/lang/Object;
.source "GridSslBasicContextFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisabledX509TrustManager"
.end annotation


# static fields
.field private static final CERTS:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$DisabledX509TrustManager;->CERTS:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$1;

    .prologue
    .line 417
    invoke-direct {p0}, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$DisabledX509TrustManager;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 425
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "x509Certificates"    # [Ljava/security/cert/X509Certificate;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 431
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lorg/apache/ignite/internal/client/ssl/GridSslBasicContextFactory$DisabledX509TrustManager;->CERTS:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
