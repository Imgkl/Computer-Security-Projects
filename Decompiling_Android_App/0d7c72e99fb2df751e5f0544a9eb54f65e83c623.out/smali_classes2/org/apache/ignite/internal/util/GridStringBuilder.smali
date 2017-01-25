.class public Lorg/apache/ignite/internal/util/GridStringBuilder;
.super Ljava/lang/Object;
.source "GridStringBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private impl:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/apache/ignite/internal/util/GridStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridStringBuilder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    .line 441
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 431
    return-void
.end method


# virtual methods
.method public a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    return-object p0
.end method

.method public a(D)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 234
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 236
    return-object p0
.end method

.method public a(F)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    return-object p0
.end method

.method public a(I)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    return-object p0
.end method

.method public a(J)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "lng"    # J

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 133
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;II)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 146
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    return-object p0
.end method

.method public a(Ljava/lang/StringBuffer;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 122
    return-object p0
.end method

.method public a(Z)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    return-object p0
.end method

.method public a([C)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "str"    # [C

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 157
    return-object p0
.end method

.method public a([CII)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 170
    return-object p0
.end method

.method public appendCodePoint(I)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "codePoint"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 247
    return-object p0
.end method

.method public d(I)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 270
    return-object p0
.end method

.method public d(II)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 259
    return-object p0
.end method

.method public i(IC)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "off"    # I
    .param p2, "c"    # C

    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 381
    return-object p0
.end method

.method public i(ID)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 2
    .param p1, "off"    # I
    .param p2, "d"    # D

    .prologue
    .line 421
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->i(ILjava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public i(IF)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "off"    # I
    .param p2, "f"    # F

    .prologue
    .line 411
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->i(ILjava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public i(II)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "off"    # I
    .param p2, "i"    # I

    .prologue
    .line 391
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->i(ILjava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public i(IJ)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 2
    .param p1, "off"    # I
    .param p2, "l"    # J

    .prologue
    .line 401
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->i(ILjava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public i(ILjava/lang/CharSequence;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "dstOff"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 341
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 343
    return-object p0
.end method

.method public i(ILjava/lang/CharSequence;II)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "dstOff"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 357
    return-object p0
.end method

.method public i(ILjava/lang/Object;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "off"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 307
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;->i(ILjava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public i(ILjava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "off"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    return-object p0
.end method

.method public i(IZ)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "off"    # I
    .param p2, "b"    # Z

    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(IZ)Ljava/lang/StringBuilder;

    .line 369
    return-object p0
.end method

.method public i(I[C)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "off"    # I
    .param p2, "str"    # [C

    .prologue
    .line 329
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 331
    return-object p0
.end method

.method public i(I[CII)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "off"    # I
    .param p4, "len"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    .line 297
    return-object p0
.end method

.method public impl()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lorg/apache/ignite/internal/util/GridStringBuilder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public r(IILjava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    return-object p0
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridStringBuilder;->impl:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
