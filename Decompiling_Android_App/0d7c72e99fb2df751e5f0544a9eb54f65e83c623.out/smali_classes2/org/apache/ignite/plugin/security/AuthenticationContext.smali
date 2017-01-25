.class public Lorg/apache/ignite/plugin/security/AuthenticationContext;
.super Ljava/lang/Object;
.source "AuthenticationContext.java"


# instance fields
.field private addr:Ljava/net/InetSocketAddress;

.field private credentials:Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

.field private subjId:Ljava/util/UUID;

.field private subjType:Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public address()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->addr:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public address(Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p1, "addr"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->addr:Ljava/net/InetSocketAddress;

    .line 109
    return-void
.end method

.method public credentials()Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->credentials:Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    return-object v0
.end method

.method public credentials(Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)V
    .locals 0
    .param p1, "credentials"    # Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->credentials:Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .line 91
    return-void
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->subjId:Ljava/util/UUID;

    return-object v0
.end method

.method public subjectId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "subjId"    # Ljava/util/UUID;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->subjId:Ljava/util/UUID;

    .line 73
    return-void
.end method

.method public subjectType()Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->subjType:Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;

    return-object v0
.end method

.method public subjectType(Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;)V
    .locals 0
    .param p1, "subjType"    # Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/AuthenticationContext;->subjType:Lorg/apache/ignite/plugin/security/GridSecuritySubjectType;

    .line 55
    return-void
.end method
