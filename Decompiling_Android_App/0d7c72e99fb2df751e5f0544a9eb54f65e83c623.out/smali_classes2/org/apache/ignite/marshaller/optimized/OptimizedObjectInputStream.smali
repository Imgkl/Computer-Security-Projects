.class Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "OptimizedObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$1;,
        Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;,
        Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;
    }
.end annotation


# static fields
.field private static final DUMMY:Ljava/lang/Object;

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private clsLdr:Ljava/lang/ClassLoader;

.field private clsMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

.field private curCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

.field private curObj:Ljava/lang/Object;

.field private final handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

.field private in:Lorg/apache/ignite/internal/util/io/GridDataInput;

.field private mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->UNSAFE:Lsun/misc/Unsafe;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->DUMMY:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/util/io/GridDataInput;)V
    .locals 2
    .param p1, "in"    # Lorg/apache/ignite/internal/util/io/GridDataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    .line 45
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    .line 76
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    .line 77
    return-void
.end method

.method static synthetic access$200(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    return-object v0
.end method

.method private readClass()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v0

    .line 277
    .local v0, "compTypeId":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->classDescriptor(Ljava/util/concurrent/ConcurrentMap;ILjava/lang/ClassLoader;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->describedClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 927
    const/4 v0, -0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->reset()V

    .line 115
    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    .line 116
    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    .line 117
    iput-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 118
    return-void
.end method

.method context(Ljava/util/concurrent/ConcurrentMap;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p2, "ctx"    # Lorg/apache/ignite/marshaller/MarshallerContext;
    .param p3, "mapper"    # Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;
    .param p4, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;",
            ">;",
            "Lorg/apache/ignite/marshaller/MarshallerContext;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "clsMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Class;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;>;"
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    .line 92
    iput-object p2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    .line 93
    iput-object p3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    .line 94
    iput-object p4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    .line 95
    return-void
.end method

.method public defaultReadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "Not in readObject() call."

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curObj:Ljava/lang/Object;

    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFields(Ljava/lang/Object;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;)V

    .line 910
    return-void
.end method

.method handledObjects()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    # getter for: Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->access$100(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public in()Lorg/apache/ignite/internal/util/io/GridDataInput;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    return-object v0
.end method

.method public in(Lorg/apache/ignite/internal/util/io/GridDataInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/ignite/internal/util/io/GridDataInput;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    .line 109
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/io/GridDataInput;->read([BII)I

    move-result v0

    return v0
.end method

.method readArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "compType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v3}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readInt()I

    move-result v2

    .line 293
    .local v2, "len":I
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 295
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 298
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-object v0
.end method

.method readArrayList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v2

    .line 534
    .local v2, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 538
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 539
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    return-object v1
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readBoolean()Z

    move-result v0

    return v0
.end method

.method readBooleanArray()[Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 787
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readBooleanArray()[Z

    move-result-object v0

    .line 789
    .local v0, "arr":[Z
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 791
    return-object v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readByte()B

    move-result v0

    return v0
.end method

.method readByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readByteArray()[B

    move-result-object v0

    .line 691
    .local v0, "arr":[B
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 693
    return-object v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readChar()C

    move-result v0

    return v0
.end method

.method readCharArray()[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readCharArray()[C

    move-result-object v0

    .line 775
    .local v0, "arr":[C
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 777
    return-object v0
.end method

.method readDate()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 677
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 679
    return-object v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method readDoubleArray()[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readDoubleArray()[D

    move-result-object v0

    .line 761
    .local v0, "arr":[D
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 763
    return-object v0
.end method

.method readExternalizable(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 5
    .param p2, "readResolveMtd"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    .line 447
    .local v3, "obj":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v4, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v2

    .local v2, "handle":I
    move-object v1, v3

    .line 449
    check-cast v1, Ljava/io/Externalizable;

    .line 451
    .local v1, "extObj":Ljava/io/Externalizable;
    invoke-interface {v1, p0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    .line 453
    if-eqz p2, :cond_0

    .line 455
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 457
    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v4, v2, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->set(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 464
    :cond_0
    return-object v3

    .line 443
    .end local v1    # "extObj":Ljava/io/Externalizable;
    .end local v2    # "handle":I
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 459
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "extObj":Ljava/io/Externalizable;
    .restart local v2    # "handle":I
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 459
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v0

    goto :goto_1

    .line 443
    .end local v1    # "extObj":Ljava/io/Externalizable;
    .end local v2    # "handle":I
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 915
    new-instance v0, Ljava/io/NotActiveException;

    const-string v1, "Not in readObject() call."

    invoke-direct {v0, v1}, Ljava/io/NotActiveException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_0
    new-instance v0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$GetFieldImpl;-><init>(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$1;)V

    return-object v0
.end method

.method readFields(Ljava/lang/Object;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;)V
    .locals 20
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "fieldOffs"    # Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_1

    .line 351
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;->get(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;

    move-result-object v16

    .line 353
    .local v16, "t":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    sget-object v17, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$1;->$SwitchMap$org$apache$ignite$marshaller$optimized$OptimizedFieldType:[I

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->type()Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/marshaller/optimized/OptimizedFieldType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 350
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readByte()B

    move-result v6

    .line 357
    .local v6, "resByte":B
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 358
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v6}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setByte(Ljava/lang/Object;JB)V

    goto :goto_1

    .line 363
    .end local v6    # "resByte":B
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readShort()S

    move-result v15

    .line 365
    .local v15, "resShort":S
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 366
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v15}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setShort(Ljava/lang/Object;JS)V

    goto :goto_1

    .line 371
    .end local v15    # "resShort":S
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v11

    .line 373
    .local v11, "resInt":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 374
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v11}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setInt(Ljava/lang/Object;JI)V

    goto :goto_1

    .line 379
    .end local v11    # "resInt":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLong()J

    move-result-wide v12

    .line 381
    .local v12, "resLong":J
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 382
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v12, v13}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setLong(Ljava/lang/Object;JJ)V

    goto :goto_1

    .line 387
    .end local v12    # "resLong":J
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFloat()F

    move-result v10

    .line 389
    .local v10, "resFloat":F
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 390
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v10}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setFloat(Ljava/lang/Object;JF)V

    goto :goto_1

    .line 395
    .end local v10    # "resFloat":F
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readDouble()D

    move-result-wide v8

    .line 397
    .local v8, "resDouble":D
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 398
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v8, v9}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setDouble(Ljava/lang/Object;JD)V

    goto/16 :goto_1

    .line 403
    .end local v8    # "resDouble":D
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readChar()C

    move-result v7

    .line 405
    .local v7, "resChar":C
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 406
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v7}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setChar(Ljava/lang/Object;JC)V

    goto/16 :goto_1

    .line 411
    .end local v7    # "resChar":C
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readBoolean()Z

    move-result v5

    .line 413
    .local v5, "resBoolean":Z
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 414
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setBoolean(Ljava/lang/Object;JZ)V

    goto/16 :goto_1

    .line 419
    .end local v5    # "resBoolean":Z
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v14

    .line 421
    .local v14, "resObject":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->field()Ljava/lang/reflect/Field;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 422
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;->offset()J

    move-result-wide v18

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2, v14}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 425
    .end local v14    # "resObject":Ljava/lang/Object;
    .end local v16    # "t":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$FieldInfo;
    :cond_1
    return-void

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readFloat()F

    move-result v0

    return v0
.end method

.method readFloatArray()[F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readFloatArray()[F

    move-result-object v0

    .line 747
    .local v0, "arr":[F
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 749
    return-object v0
.end method

.method public readFully([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readFully([B)V

    .line 811
    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readFully([BII)V

    .line 816
    return-void
.end method

.method readHashMap(Z)Ljava/util/HashMap;
    .locals 7
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v4

    .line 554
    .local v4, "size":I
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFloat()F

    move-result v2

    .line 556
    .local v2, "loadFactor":F
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v4, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 558
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 559
    iget-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v6, v3}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 561
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 562
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 563
    .local v1, "key":Ljava/lang/Object;
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 565
    .local v5, "val":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v5    # "val":Ljava/lang/Object;
    :cond_1
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->DUMMY:Ljava/lang/Object;

    goto :goto_1

    .line 568
    .end local v1    # "key":Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method readHashSet(J)Ljava/util/HashSet;
    .locals 5
    .param p1, "mapFieldOff"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/HashSet",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 582
    :try_start_0
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 584
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 586
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readHashMap(Z)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setObject(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    return-object v1

    .line 590
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method readIntArray()[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readIntArray()[I

    move-result-object v0

    .line 719
    .local v0, "arr":[I
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 721
    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readLinkedHashMap(Z)Ljava/util/LinkedHashMap;
    .locals 8
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedHashMap",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v5

    .line 625
    .local v5, "size":I
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFloat()F

    move-result v3

    .line 626
    .local v3, "loadFactor":F
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readBoolean()Z

    move-result v0

    .line 628
    .local v0, "accessOrder":Z
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v5, v3, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 630
    .local v4, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 631
    iget-object v7, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v7, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 633
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 634
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 635
    .local v2, "key":Ljava/lang/Object;
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 637
    .local v6, "val":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v4, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    .end local v6    # "val":Ljava/lang/Object;
    :cond_1
    sget-object v6, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->DUMMY:Ljava/lang/Object;

    goto :goto_1

    .line 640
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    return-object v4
.end method

.method readLinkedHashSet(J)Ljava/util/LinkedHashSet;
    .locals 5
    .param p1, "mapFieldOff"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/LinkedHashSet",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    :try_start_0
    sget-object v2, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v3, Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedHashSet;

    .line 656
    .local v1, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 658
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLinkedHashMap(Z)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->setObject(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    return-object v1

    .line 662
    .end local v1    # "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method readLinkedList()Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v2

    .line 605
    .local v2, "size":I
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 607
    .local v1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 610
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 612
    :cond_0
    return-object v1
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method readLongArray()[J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readLongArray()[J

    move-result-object v0

    .line 733
    .local v0, "arr":[J
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 735
    return-object v0
.end method

.method public readObjectOverride()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 132
    iput-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curObj:Ljava/lang/Object;

    .line 133
    iput-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 135
    iget-object v7, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v7}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readByte()B

    move-result v4

    .line 137
    .local v4, "ref":B
    sparse-switch v4, :sswitch_data_0

    .line 255
    new-instance v3, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    const-string v6, "Unexpected error occurred during unmarshalling"

    invoke-direct {v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>(Ljava/lang/String;)V

    .line 257
    .local v3, "msg":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    iget-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curCls:Ljava/lang/Class;

    if-eqz v6, :cond_0

    .line 258
    const-string v6, " of an instance of the class: "

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curCls:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/util/GridStringBuilder;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 260
    :cond_0
    const-string v6, ". Check that all nodes are running the same version of Ignite and that all nodes have GridOptimizedMarshaller configured with identical optimized classes lists, if any (see setClassNames and setClassNamesPath methods). If your serialized classes implement java.io.Externalizable interface, verify that serialization logic is correct."

    invoke-virtual {v3, v6}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 265
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    .end local v3    # "msg":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    :sswitch_0
    iget-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->lookup(I)Ljava/lang/Object;

    move-result-object v6

    .line 252
    :goto_0
    :sswitch_1
    return-object v6

    .line 146
    :sswitch_2
    :try_start_0
    sget-object v6, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->JDK_MARSH:Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;

    iget-object v7, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    invoke-virtual {v6, p0, v7}, Lorg/apache/ignite/marshaller/jdk/JdkMarshaller;->unmarshal(Ljava/io/InputStream;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    const-class v6, Ljava/io/IOException;

    invoke-virtual {v1, v6}, Lorg/apache/ignite/IgniteCheckedException;->getCause(Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    .line 151
    .local v2, "ioEx":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 152
    throw v2

    .line 154
    :cond_1
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to deserialize object with JDK marshaller."

    invoke-direct {v6, v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 158
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "ioEx":Ljava/io/IOException;
    :sswitch_3
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readByte()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    goto :goto_0

    .line 161
    :sswitch_4
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readShort()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    goto :goto_0

    .line 164
    :sswitch_5
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 167
    :sswitch_6
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 170
    :sswitch_7
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_0

    .line 173
    :sswitch_8
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readDouble()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_0

    .line 176
    :sswitch_9
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readChar()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_0

    .line 179
    :sswitch_a
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readBoolean()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 182
    :sswitch_b
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 185
    :sswitch_c
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readShortArray()[S

    move-result-object v6

    goto :goto_0

    .line 188
    :sswitch_d
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readIntArray()[I

    move-result-object v6

    goto :goto_0

    .line 191
    :sswitch_e
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLongArray()[J

    move-result-object v6

    goto :goto_0

    .line 194
    :sswitch_f
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFloatArray()[F

    move-result-object v6

    goto :goto_0

    .line 197
    :sswitch_10
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readDoubleArray()[D

    move-result-object v6

    goto/16 :goto_0

    .line 200
    :sswitch_11
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readCharArray()[C

    move-result-object v6

    goto/16 :goto_0

    .line 203
    :sswitch_12
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readBooleanArray()[Z

    move-result-object v6

    goto/16 :goto_0

    .line 206
    :sswitch_13
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    .line 209
    :sswitch_14
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 212
    :sswitch_15
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readUuid()Ljava/util/UUID;

    move-result-object v6

    goto/16 :goto_0

    .line 215
    :sswitch_16
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readProperties()Ljava/util/Properties;

    move-result-object v6

    goto/16 :goto_0

    .line 218
    :sswitch_17
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readArrayList()Ljava/util/ArrayList;

    move-result-object v6

    goto/16 :goto_0

    .line 221
    :sswitch_18
    invoke-virtual {p0, v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readHashMap(Z)Ljava/util/HashMap;

    move-result-object v6

    goto/16 :goto_0

    .line 224
    :sswitch_19
    sget-wide v6, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->HASH_SET_MAP_OFF:J

    invoke-virtual {p0, v6, v7}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readHashSet(J)Ljava/util/HashSet;

    move-result-object v6

    goto/16 :goto_0

    .line 227
    :sswitch_1a
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLinkedList()Ljava/util/LinkedList;

    move-result-object v6

    goto/16 :goto_0

    .line 230
    :sswitch_1b
    invoke-virtual {p0, v8}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLinkedHashMap(Z)Ljava/util/LinkedHashMap;

    move-result-object v6

    goto/16 :goto_0

    .line 233
    :sswitch_1c
    sget-wide v6, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->HASH_SET_MAP_OFF:J

    invoke-virtual {p0, v6, v7}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLinkedHashSet(J)Ljava/util/LinkedHashSet;

    move-result-object v6

    goto/16 :goto_0

    .line 236
    :sswitch_1d
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readDate()Ljava/util/Date;

    move-result-object v6

    goto/16 :goto_0

    .line 239
    :sswitch_1e
    invoke-direct {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readClass()Ljava/lang/Class;

    move-result-object v6

    goto/16 :goto_0

    .line 244
    :sswitch_1f
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readInt()I

    move-result v5

    .line 246
    .local v5, "typeId":I
    if-nez v5, :cond_2

    iget-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v9, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    invoke-static {v6, v7, v8, v9}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->classDescriptor(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Class;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    move-result-object v0

    .line 250
    .local v0, "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    :goto_1
    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->describedClass()Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curCls:Ljava/lang/Class;

    .line 252
    invoke-virtual {v0, p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;->read(Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0

    .line 246
    .end local v0    # "desc":Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;
    :cond_2
    iget-object v6, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsMap:Ljava/util/concurrent/ConcurrentMap;

    iget-object v7, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->clsLdr:Ljava/lang/ClassLoader;

    iget-object v8, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->ctx:Lorg/apache/ignite/marshaller/MarshallerContext;

    iget-object v9, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->mapper:Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;

    invoke-static {v6, v5, v7, v8, v9}, Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerUtils;->classDescriptor(Ljava/util/concurrent/ConcurrentMap;ILjava/lang/ClassLoader;Lorg/apache/ignite/marshaller/MarshallerContext;Lorg/apache/ignite/marshaller/optimized/OptimizedMarshallerIdMapper;)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor;

    move-result-object v0

    goto :goto_1

    .line 137
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_a
        0x9 -> :sswitch_b
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_e
        0xd -> :sswitch_f
        0xe -> :sswitch_10
        0xf -> :sswitch_11
        0x10 -> :sswitch_12
        0x11 -> :sswitch_13
        0x12 -> :sswitch_14
        0x13 -> :sswitch_15
        0x14 -> :sswitch_16
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x17 -> :sswitch_19
        0x18 -> :sswitch_1a
        0x19 -> :sswitch_1b
        0x1a -> :sswitch_1c
        0x1b -> :sswitch_1d
        0x1c -> :sswitch_1e
        0x64 -> :sswitch_1f
        0x65 -> :sswitch_1f
        0x66 -> :sswitch_1f
    .end sparse-switch
.end method

.method readProperties()Ljava/util/Properties;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readBoolean()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 327
    .local v0, "dflts":Ljava/util/Properties;
    :goto_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 329
    .local v2, "props":Ljava/util/Properties;
    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v4}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readInt()I

    move-result v3

    .line 331
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 332
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "dflts":Ljava/util/Properties;
    .end local v1    # "i":I
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "size":I
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Properties;

    move-object v0, v4

    goto :goto_0

    .line 334
    .restart local v0    # "dflts":Ljava/util/Properties;
    .restart local v1    # "i":I
    .restart local v2    # "props":Ljava/util/Properties;
    .restart local v3    # "size":I
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v4, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 336
    return-object v2
.end method

.method readSerializable(Ljava/lang/Class;Ljava/util/List;Ljava/lang/reflect/Method;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;)Ljava/lang/Object;
    .locals 7
    .param p3, "readResolveMtd"    # Ljava/lang/reflect/Method;
    .param p4, "fields"    # Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mtds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :try_start_0
    sget-object v5, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 490
    .local v4, "obj":Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v5, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    move-result v1

    .line 492
    .local v1, "handle":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 493
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 495
    .local v3, "mtd":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    .line 496
    iput-object v4, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curObj:Ljava/lang/Object;

    .line 497
    invoke-virtual {p4, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->fields(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 500
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 492
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v1    # "handle":I
    .end local v2    # "i":I
    .end local v3    # "mtd":Ljava/lang/reflect/Method;
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 502
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .restart local v1    # "handle":I
    .restart local v2    # "i":I
    .restart local v3    # "mtd":Ljava/lang/reflect/Method;
    .restart local v4    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 507
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_0
    invoke-virtual {p4, v2}, Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$Fields;->fields(I)Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readFields(Ljava/lang/Object;Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;)V

    goto :goto_1

    .line 510
    .end local v3    # "mtd":Ljava/lang/reflect/Method;
    :cond_1
    if-eqz p3, :cond_2

    .line 512
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 514
    iget-object v5, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v5, v1, v4}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->set(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 521
    :cond_2
    return-object v4

    .line 516
    :catch_2
    move-exception v0

    .line 517
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 516
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_3
    move-exception v0

    goto :goto_3

    .line 502
    .restart local v3    # "mtd":Ljava/lang/reflect/Method;
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readShort()S

    move-result v0

    return v0
.end method

.method readShortArray()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readShortArray()[S

    move-result-object v0

    .line 705
    .local v0, "arr":[S
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 707
    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 805
    return-object v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method readUuid()Ljava/util/UUID;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    .line 312
    .local v0, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->assign(Ljava/lang/Object;)I

    .line 314
    return-object v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 0
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "pri"    # I

    .prologue
    .line 923
    return-void
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/io/GridDataInput;->reset()V

    .line 124
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->handles:Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;

    invoke-virtual {v0}, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream$HandleTable;->clear()V

    .line 126
    iput-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curObj:Ljava/lang/Object;

    .line 127
    iput-object v1, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->curFields:Lorg/apache/ignite/marshaller/optimized/OptimizedClassDescriptor$ClassFields;

    .line 128
    return-void
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lorg/apache/ignite/marshaller/optimized/OptimizedObjectInputStream;->in:Lorg/apache/ignite/internal/util/io/GridDataInput;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/util/io/GridDataInput;->skipBytes(I)I

    move-result v0

    return v0
.end method
