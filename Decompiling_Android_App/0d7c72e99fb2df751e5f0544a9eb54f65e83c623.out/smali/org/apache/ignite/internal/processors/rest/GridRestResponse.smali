.class public Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
.super Ljava/lang/Object;
.source "GridRestResponse.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final STATUS_AUTH_FAILED:I = 0x2

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_SECURITY_CHECK_FAILED:I = 0x3

.field public static final STATUS_SUCCESS:I

.field private static final serialVersionUID:J


# instance fields
.field private err:Ljava/lang/String;

.field private obj:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private sesTokBytes:[B

.field private sesTokStr:Ljava/lang/String;

.field private successStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "err"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    .line 86
    sget-boolean v0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 88
    :cond_0
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    .line 89
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->err:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    .line 75
    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    .line 76
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->obj:Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->err:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessStatus()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    .line 172
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokBytes:[B

    .line 173
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokStr:Ljava/lang/String;

    .line 174
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->err:Ljava/lang/String;

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->obj:Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public sessionTokenBytes([B)V
    .locals 0
    .param p1, "sesTokBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 138
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokBytes:[B

    .line 139
    return-void
.end method

.method public sessionTokenBytes()[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokBytes:[B

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->err:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 110
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->obj:Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "sesTokStr"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokStr:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-class v0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->successStatus:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokBytes:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 164
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sesTokStr:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->err:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->obj:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 167
    return-void
.end method
