.class public Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
.super Ljava/lang/Object;
.source "IgfsIpcEndpointConfiguration.java"


# static fields
.field public static DFLT_HOST:Ljava/lang/String; = null

.field public static final DFLT_MEM_SIZE:I = 0x40000

.field public static DFLT_PORT:I = 0x0

.field public static final DFLT_TOKEN_DIR_PATH:Ljava/lang/String; = "ipc/shmem"

.field public static DFLT_TYPE:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;


# instance fields
.field private host:Ljava/lang/String;

.field private memSize:I

.field private port:I

.field private tokenDirPath:Ljava/lang/String;

.field private type:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hasSharedMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->SHMEM:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    :goto_0
    sput-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_TYPE:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .line 33
    const-string v0, "127.0.0.1"

    sput-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_HOST:Ljava/lang/String;

    .line 36
    const/16 v0, 0x2904

    sput v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_PORT:I

    return-void

    .line 30
    :cond_0
    sget-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointType;->TCP:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_TYPE:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->type:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .line 54
    sget-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_HOST:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->host:Ljava/lang/String;

    .line 57
    sget v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_PORT:I

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->port:I

    .line 60
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->memSize:I

    .line 63
    const-string v0, "ipc/shmem"

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->tokenDirPath:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;)V
    .locals 1
    .param p1, "cfg"    # Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_TYPE:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->type:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .line 54
    sget-object v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_HOST:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->host:Ljava/lang/String;

    .line 57
    sget v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->DFLT_PORT:I

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->port:I

    .line 60
    const/high16 v0, 0x40000

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->memSize:I

    .line 63
    const-string v0, "ipc/shmem"

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->tokenDirPath:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getType()Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->type:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .line 79
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->host:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->port:I

    .line 81
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getMemorySize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->memSize:I

    .line 82
    invoke-virtual {p1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->getTokenDirectoryPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->tokenDirPath:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getMemorySize()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->memSize:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->port:I

    return v0
.end method

.method public getTokenDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->tokenDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/apache/ignite/igfs/IgfsIpcEndpointType;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->type:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->host:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setMemorySize(I)V
    .locals 0
    .param p1, "memSize"    # I

    .prologue
    .line 202
    iput p1, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->memSize:I

    .line 203
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 176
    iput p1, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->port:I

    .line 177
    return-void
.end method

.method public setTokenDirectoryPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenDirPath"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->tokenDirPath:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setType(Lorg/apache/ignite/igfs/IgfsIpcEndpointType;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->type:Lorg/apache/ignite/igfs/IgfsIpcEndpointType;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-class v0, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
