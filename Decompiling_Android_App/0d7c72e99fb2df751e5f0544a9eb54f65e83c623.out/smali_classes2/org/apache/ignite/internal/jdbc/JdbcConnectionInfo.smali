.class public Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;
.super Ljava/lang/Object;
.source "JdbcConnectionInfo.java"


# instance fields
.field private cacheName:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private port:I

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->url:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public cacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->cacheName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public hostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public hostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->hostname:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public port()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->port:I

    return v0
.end method

.method public port(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 75
    iput p1, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->port:I

    .line 76
    return-void
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/jdbc/JdbcConnectionInfo;->url:Ljava/lang/String;

    return-object v0
.end method
