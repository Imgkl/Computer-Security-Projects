.class public Lorg/apache/ignite/plugin/security/GridSecurityCredentialsBasicProvider;
.super Ljava/lang/Object;
.source "GridSecurityCredentialsBasicProvider.java"

# interfaces
.implements Lorg/apache/ignite/plugin/security/GridSecurityCredentialsProvider;


# instance fields
.field private cred:Lorg/apache/ignite/plugin/security/GridSecurityCredentials;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/plugin/security/GridSecurityCredentials;)V
    .locals 0
    .param p1, "cred"    # Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentialsBasicProvider;->cred:Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    .line 38
    return-void
.end method


# virtual methods
.method public credentials()Lorg/apache/ignite/plugin/security/GridSecurityCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/ignite/plugin/security/GridSecurityCredentialsBasicProvider;->cred:Lorg/apache/ignite/plugin/security/GridSecurityCredentials;

    return-object v0
.end method
