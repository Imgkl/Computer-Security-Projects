.class public Lorg/apache/ignite/internal/direct/DirectByteBufferStream;
.super Ljava/lang/Object;
.source "DirectByteBufferStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/direct/DirectByteBufferStream$10;,
        Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BOOLEAN_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[Z>;"
        }
    .end annotation
.end field

.field private static final BOOLEAN_ARR_EMPTY:[Z

.field private static final BOOLEAN_ARR_OFF:J

.field private static final BYTE_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final BYTE_ARR_EMPTY:[B

.field private static final BYTE_ARR_OFF:J

.field private static final CHAR_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[C>;"
        }
    .end annotation
.end field

.field private static final CHAR_ARR_EMPTY:[C

.field private static final CHAR_ARR_OFF:J

.field private static final DOUBLE_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[D>;"
        }
    .end annotation
.end field

.field private static final DOUBLE_ARR_EMPTY:[D

.field private static final DOUBLE_ARR_OFF:J

.field private static final FLOAT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[F>;"
        }
    .end annotation
.end field

.field private static final FLOAT_ARR_EMPTY:[F

.field private static final FLOAT_ARR_OFF:J

.field private static final INT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final INT_ARR_EMPTY:[I

.field private static final INT_ARR_OFF:J

.field private static final LONG_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[J>;"
        }
    .end annotation
.end field

.field private static final LONG_ARR_EMPTY:[J

.field private static final LONG_ARR_OFF:J

.field private static final NULL:Ljava/lang/Object;

.field private static final SHORT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<[S>;"
        }
    .end annotation
.end field

.field private static final SHORT_ARR_EMPTY:[S

.field private static final SHORT_ARR_OFF:J

.field private static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field private arrCur:Ljava/lang/Object;

.field private arrIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field private arrOff:I

.field private baseOff:J

.field private buf:Ljava/nio/ByteBuffer;

.field private col:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cur:Ljava/lang/Object;

.field private heapArr:[B

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field private keyDone:Z

.field private lastFinished:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mapCur:Ljava/lang/Object;

.field private mapIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation
.end field

.field private msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

.field private final msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

.field private final msgFormatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

.field private msgTypeDone:Z

.field private objArr:[Ljava/lang/Object;

.field private readItems:I

.field private readSize:I

.field private reader:Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

.field private tmpArr:Ljava/lang/Object;

.field private tmpArrBytes:I

.field private tmpArrOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    const-class v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    .line 36
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    .line 39
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [B

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_OFF:J

    .line 42
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [S

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->SHORT_ARR_OFF:J

    .line 45
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [I

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->INT_ARR_OFF:J

    .line 48
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [J

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->LONG_ARR_OFF:J

    .line 51
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [F

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_OFF:J

    .line 54
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [D

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->DOUBLE_ARR_OFF:J

    .line 57
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [C

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->CHAR_ARR_OFF:J

    .line 60
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    const-class v2, [Z

    invoke-virtual {v0, v2}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v2, v0

    sput-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_OFF:J

    .line 63
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_EMPTY:[B

    .line 66
    new-array v0, v1, [S

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->SHORT_ARR_EMPTY:[S

    .line 69
    new-array v0, v1, [I

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->INT_ARR_EMPTY:[I

    .line 72
    new-array v0, v1, [J

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->LONG_ARR_EMPTY:[J

    .line 75
    new-array v0, v1, [F

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_EMPTY:[F

    .line 78
    new-array v0, v1, [D

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->DOUBLE_ARR_EMPTY:[D

    .line 81
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->CHAR_ARR_EMPTY:[C

    .line 84
    new-array v0, v1, [Z

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_EMPTY:[Z

    .line 87
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$1;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$1;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 102
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$2;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$2;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->SHORT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 117
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$3;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$3;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->INT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 132
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$4;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$4;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->LONG_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 147
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$5;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$5;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 162
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$6;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$6;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->DOUBLE_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 177
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$7;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$7;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->CHAR_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 192
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$8;

    invoke-direct {v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$8;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    return-void

    :cond_0
    move v0, v1

    .line 34
    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;)V
    .locals 2
    .param p1, "msgFactory"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;
    .param p2, "msgFormatter"    # Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .prologue
    const/4 v1, -0x1

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    .line 252
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrCur:Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    .line 264
    iput v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    .line 289
    iput-object p1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    .line 290
    iput-object p2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgFormatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    .line 291
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_EMPTY:[B

    return-object v0
.end method

.method static synthetic access$100()[S
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->SHORT_ARR_EMPTY:[S

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->INT_ARR_EMPTY:[I

    return-object v0
.end method

.method static synthetic access$300()[J
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->LONG_ARR_EMPTY:[J

    return-object v0
.end method

.method static synthetic access$400()[F
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_EMPTY:[F

    return-object v0
.end method

.method static synthetic access$500()[D
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->DOUBLE_ARR_EMPTY:[D

    return-object v0
.end method

.method static synthetic access$600()[C
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->CHAR_ARR_EMPTY:[C

    return-object v0
.end method

.method static synthetic access$700()[Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_EMPTY:[Z

    return-object v0
.end method

.method private arrayIterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .param p1, "arr"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1459
    new-instance v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$9;-><init>(Lorg/apache/ignite/internal/direct/DirectByteBufferStream;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private read(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    .prologue
    .line 1385
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$10;->$SwitchMap$org$apache$ignite$plugin$extensions$communication$MessageCollectionItemType:[I

    invoke-virtual {p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1387
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 1447
    :goto_0
    return-object v0

    .line 1390
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 1393
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1396
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1399
    :pswitch_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 1402
    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 1405
    :pswitch_6
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 1408
    :pswitch_7
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1411
    :pswitch_8
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 1414
    :pswitch_9
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readShortArray()[S

    move-result-object v0

    goto :goto_0

    .line 1417
    :pswitch_a
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readIntArray()[I

    move-result-object v0

    goto :goto_0

    .line 1420
    :pswitch_b
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readLongArray()[J

    move-result-object v0

    goto :goto_0

    .line 1423
    :pswitch_c
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readFloatArray()[F

    move-result-object v0

    goto :goto_0

    .line 1426
    :pswitch_d
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readDoubleArray()[D

    move-result-object v0

    goto :goto_0

    .line 1429
    :pswitch_e
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readCharArray()[C

    move-result-object v0

    goto :goto_0

    .line 1432
    :pswitch_f
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readBooleanArray()[Z

    move-result-object v0

    goto :goto_0

    .line 1435
    :pswitch_10
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1438
    :pswitch_11
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readBitSet()Ljava/util/BitSet;

    move-result-object v0

    goto :goto_0

    .line 1441
    :pswitch_12
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readUuid()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    .line 1444
    :pswitch_13
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readIgniteUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    goto :goto_0

    .line 1447
    :pswitch_14
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readMessage()Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v0

    goto :goto_0

    .line 1385
    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;
    .locals 7
    .param p2, "lenShift"    # I
    .param p3, "off"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<TT;>;IJ)TT;"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, "creator":Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;, "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator<TT;>;"
    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJI)Ljava/lang/Object;
    .locals 15
    .param p2, "lenShift"    # I
    .param p3, "off"    # J
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator",
            "<TT;>;IJI)TT;"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, "creator":Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;, "Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator<TT;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1196
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArr:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 1197
    const/4 v3, -0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    .line 1198
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 1199
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 1201
    const/4 v2, 0x0

    .line 1250
    :goto_0
    return-object v2

    .line 1204
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readInt()I

    move-result p5

    .line 1207
    :cond_2
    packed-switch p5, :pswitch_data_0

    .line 1219
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;->create(I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArr:Ljava/lang/Object;

    .line 1220
    shl-int v3, p5, p2

    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrBytes:I

    .line 1224
    :cond_3
    iget v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrBytes:I

    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrOff:I

    sub-int v14, v3, v4

    .line 1225
    .local v14, "toRead":I
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    .line 1226
    .local v13, "remaining":I
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 1228
    .local v12, "pos":I
    if-gt v14, v13, :cond_4

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 1230
    iget-boolean v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v3, :cond_5

    .line 1231
    sget-object v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v8, v12

    add-long v5, v6, v8

    iget-object v7, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArr:Ljava/lang/Object;

    iget v8, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrOff:I

    int-to-long v8, v8

    add-long v8, v8, p3

    int-to-long v10, v14

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 1233
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int v4, v12, v14

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1235
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArr:Ljava/lang/Object;

    .line 1237
    .local v2, "arr":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArr:Ljava/lang/Object;

    .line 1238
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrBytes:I

    .line 1239
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrOff:I

    goto :goto_0

    .line 1209
    .end local v2    # "arr":Ljava/lang/Object;, "TT;"
    .end local v12    # "pos":I
    .end local v13    # "remaining":I
    .end local v14    # "toRead":I
    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 1211
    const/4 v2, 0x0

    goto :goto_0

    .line 1214
    :pswitch_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 1216
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;->create(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1228
    .restart local v12    # "pos":I
    .restart local v13    # "remaining":I
    .restart local v14    # "toRead":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 1244
    :cond_5
    sget-object v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v8, v12

    add-long v5, v6, v8

    iget-object v7, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArr:Ljava/lang/Object;

    iget v8, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrOff:I

    int-to-long v8, v8

    add-long v8, v8, p3

    int-to-long v10, v13

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 1246
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int v4, v12, v13

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1248
    iget v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrOff:I

    add-int/2addr v3, v13

    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->tmpArrOff:I

    .line 1250
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1207
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private write(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V
    .locals 5
    .param p1, "type"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    .line 1260
    sget-object v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream$10;->$SwitchMap$org$apache$ignite$plugin$extensions$communication$MessageCollectionItemType:[I

    invoke-virtual {p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1376
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1262
    :pswitch_0
    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByte(B)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1267
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Short;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeShort(S)V

    goto :goto_0

    .line 1272
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0

    .line 1277
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeLong(J)V

    goto :goto_0

    .line 1282
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeFloat(F)V

    goto :goto_0

    .line 1287
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeDouble(D)V

    goto :goto_0

    .line 1292
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Character;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeChar(C)V

    goto :goto_0

    .line 1297
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeBoolean(Z)V

    goto :goto_0

    .line 1302
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, [B

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByteArray([B)V

    goto :goto_0

    .line 1307
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, [S

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeShortArray([S)V

    goto :goto_0

    .line 1312
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, [I

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeIntArray([I)V

    goto :goto_0

    .line 1317
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, [J

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeLongArray([J)V

    goto :goto_0

    .line 1322
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, [F

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeFloatArray([F)V

    goto :goto_0

    .line 1327
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, [D

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeDoubleArray([D)V

    goto :goto_0

    .line 1332
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, [C

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeCharArray([C)V

    goto :goto_0

    .line 1337
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, [Z

    .end local p2    # "val":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeBooleanArray([Z)V

    goto/16 :goto_0

    .line 1342
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/String;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1347
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_11
    check-cast p2, Ljava/util/BitSet;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeBitSet(Ljava/util/BitSet;)V

    goto/16 :goto_0

    .line 1352
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_12
    check-cast p2, Ljava/util/UUID;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeUuid(Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 1357
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_13
    check-cast p2, Lorg/apache/ignite/lang/IgniteUuid;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeIgniteUuid(Lorg/apache/ignite/lang/IgniteUuid;)V

    goto/16 :goto_0

    .line 1363
    .restart local p2    # "val":Ljava/lang/Object;
    :pswitch_14
    if-eqz p2, :cond_1

    .line 1364
    :try_start_0
    invoke-interface {p3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->beforeInnerMessageWrite()V

    .line 1366
    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-object v2, v0

    invoke-virtual {p0, v2, p3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeMessage(Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    if-eqz p2, :cond_0

    .line 1370
    iget-boolean v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    invoke-interface {p3, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->afterInnerMessageWrite(Z)V

    goto/16 :goto_0

    .line 1369
    :catchall_0
    move-exception v2

    if-eqz p2, :cond_2

    .line 1370
    iget-boolean v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    invoke-interface {p3, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->afterInnerMessageWrite(Z)V

    :cond_2
    throw v2

    .line 1260
    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private writeArray(Ljava/lang/Object;JII)Z
    .locals 8
    .param p1, "arr"    # Ljava/lang/Object;
    .param p2, "off"    # J
    .param p4, "len"    # I
    .param p5, "bytes"    # I

    .prologue
    .line 1117
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JIIZ)Z

    move-result v0

    return v0
.end method

.method private writeArray(Ljava/lang/Object;JIIZ)Z
    .locals 14
    .param p1, "arr"    # Ljava/lang/Object;
    .param p2, "off"    # J
    .param p4, "len"    # I
    .param p5, "bytes"    # I
    .param p6, "skipLen"    # Z

    .prologue
    .line 1129
    sget-boolean v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1130
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1131
    :cond_2
    sget-boolean v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1132
    :cond_3
    sget-boolean v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v3, :cond_4

    if-gez p4, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1133
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    if-gez p5, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1134
    :cond_5
    sget-boolean v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    iget v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    move/from16 v0, p5

    if-ge v0, v3, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1136
    :cond_6
    iget v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_9

    .line 1137
    if-nez p6, :cond_8

    .line 1138
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_7

    .line 1139
    const/4 v3, 0x0

    .line 1171
    :goto_0
    return v3

    .line 1141
    :cond_7
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    .line 1144
    :cond_8
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    .line 1147
    :cond_9
    iget v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    sub-int v13, p5, v3

    .line 1148
    .local v13, "toWrite":I
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1149
    .local v2, "pos":I
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    .line 1151
    .local v12, "remaining":I
    if-gt v13, v12, :cond_a

    .line 1152
    sget-object v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    int-to-long v4, v4

    add-long v5, p2, v4

    iget-object v7, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v8, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    int-to-long v10, v13

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 1154
    add-int/2addr v2, v13

    .line 1156
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1158
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    .line 1160
    const/4 v3, 0x1

    goto :goto_0

    .line 1163
    :cond_a
    sget-object v3, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    int-to-long v4, v4

    add-long v5, p2, v4

    iget-object v7, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v8, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    int-to-long v10, v12

    move-object v4, p1

    invoke-virtual/range {v3 .. v11}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 1165
    add-int/2addr v2, v12

    .line 1167
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1169
    iget v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    add-int/2addr v3, v12

    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrOff:I

    .line 1171
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public lastFinished()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    return v0
.end method

.method public readBitSet()Ljava/util/BitSet;
    .locals 2

    .prologue
    .line 908
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readLongArray()[J

    move-result-object v0

    .line 910
    .local v0, "arr":[J
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readBoolean()Z
    .locals 8

    .prologue
    .line 825
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 827
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 828
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 830
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 832
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result v1

    .line 835
    .end local v0    # "pos":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readBooleanArray()[Z
    .locals 4

    .prologue
    .line 892
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x0

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    return-object v0
.end method

.method public readByte()B
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 706
    iget-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 708
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 711
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 713
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v2

    .line 716
    .end local v0    # "pos":I
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 706
    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 4

    .prologue
    .line 842
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x0

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public readChar()C
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 810
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 811
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 813
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 815
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result v2

    .line 818
    .end local v0    # "pos":I
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 808
    goto :goto_0
.end method

.method public readCharArray()[C
    .locals 4

    .prologue
    .line 885
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->CHAR_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x1

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->CHAR_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public readCollection(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;
    .locals 8
    .param p1, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<*>;>(",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            ")TC;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1016
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ne v5, v7, :cond_1

    .line 1017
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readInt()I

    move-result v3

    .line 1019
    .local v3, "size":I
    iget-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v5, :cond_0

    move-object v0, v4

    .line 1049
    .end local v3    # "size":I
    :goto_0
    return-object v0

    .line 1022
    .restart local v3    # "size":I
    :cond_0
    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    .line 1025
    .end local v3    # "size":I
    :cond_1
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ltz v5, :cond_4

    .line 1026
    iget-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->col:Ljava/util/Collection;

    if-nez v5, :cond_2

    .line 1027
    new-instance v5, Ljava/util/ArrayList;

    iget v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->col:Ljava/util/Collection;

    .line 1029
    :cond_2
    iget v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .local v1, "i":I
    :goto_1
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ge v1, v5, :cond_4

    .line 1030
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->read(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/lang/Object;

    move-result-object v2

    .line 1032
    .local v2, "item":Ljava/lang/Object;
    iget-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v5, :cond_3

    move-object v0, v4

    .line 1033
    goto :goto_0

    .line 1035
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->col:Ljava/util/Collection;

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1037
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1041
    .end local v1    # "i":I
    .end local v2    # "item":Ljava/lang/Object;
    :cond_4
    iput v7, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    .line 1042
    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .line 1043
    iput-object v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->col:Ljava/util/Collection;

    .line 1047
    .local v0, "col0":Ljava/util/Collection;, "TC;"
    iput-object v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->col:Ljava/util/Collection;

    goto :goto_0
.end method

.method public readDouble()D
    .locals 8

    .prologue
    .line 791
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 793
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_1

    .line 794
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 796
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 798
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v2

    .line 801
    .end local v0    # "pos":I
    :goto_1
    return-wide v2

    .line 791
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 801
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public readDoubleArray()[D
    .locals 4

    .prologue
    .line 878
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->DOUBLE_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x3

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->DOUBLE_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public readFloat()F
    .locals 8

    .prologue
    .line 774
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 776
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 779
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 781
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result v1

    .line 784
    .end local v0    # "pos":I
    :goto_1
    return v1

    .line 774
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 784
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public readFloatArray()[F
    .locals 4

    .prologue
    .line 871
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x2

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public readIgniteUuid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 2

    .prologue
    .line 926
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByteArray()[B

    move-result-object v0

    .line 928
    .local v0, "arr":[B
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToIgniteUuid([BI)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readInt()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 740
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 742
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 745
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 747
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    .line 750
    .end local v0    # "pos":I
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 740
    goto :goto_0
.end method

.method public readIntArray()[I
    .locals 4

    .prologue
    .line 857
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->INT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x2

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->INT_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public readLong()J
    .locals 8

    .prologue
    .line 757
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 759
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 762
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 764
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 767
    .end local v0    # "pos":I
    :goto_1
    return-wide v2

    .line 757
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 767
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public readLongArray()[J
    .locals 4

    .prologue
    .line 864
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->LONG_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x3

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->LONG_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public readMap(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;
    .locals 10
    .param p1, "keyType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p2, "valType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p3, "linked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Ljava/util/Map",
            "<**>;>(",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Z)TM;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 1061
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ne v5, v8, :cond_1

    .line 1062
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readInt()I

    move-result v3

    .line 1064
    .local v3, "size":I
    iget-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v5, :cond_0

    move-object v2, v6

    .line 1106
    .end local v3    # "size":I
    :goto_0
    return-object v2

    .line 1067
    .restart local v3    # "size":I
    :cond_0
    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    .line 1070
    .end local v3    # "size":I
    :cond_1
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ltz v5, :cond_7

    .line 1071
    iget-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->map:Ljava/util/Map;

    if-nez v5, :cond_2

    .line 1072
    if-eqz p3, :cond_3

    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->map:Ljava/util/Map;

    .line 1074
    :cond_2
    iget v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .local v0, "i":I
    :goto_2
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ge v0, v5, :cond_7

    .line 1075
    iget-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->keyDone:Z

    if-nez v5, :cond_5

    .line 1076
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->read(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/lang/Object;

    move-result-object v1

    .line 1078
    .local v1, "key":Ljava/lang/Object;
    iget-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v5, :cond_4

    move-object v2, v6

    .line 1079
    goto :goto_0

    .line 1072
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/Object;
    :cond_3
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v5

    goto :goto_1

    .line 1081
    .restart local v0    # "i":I
    .restart local v1    # "key":Ljava/lang/Object;
    :cond_4
    iput-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    .line 1082
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->keyDone:Z

    .line 1085
    .end local v1    # "key":Ljava/lang/Object;
    :cond_5
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->read(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/lang/Object;

    move-result-object v4

    .line 1087
    .local v4, "val":Ljava/lang/Object;
    iget-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v5, :cond_6

    move-object v2, v6

    .line 1088
    goto :goto_0

    .line 1090
    :cond_6
    iget-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->map:Ljava/util/Map;

    iget-object v7, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iput-boolean v9, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->keyDone:Z

    .line 1094
    iget v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1098
    .end local v0    # "i":I
    .end local v4    # "val":Ljava/lang/Object;
    :cond_7
    iput v8, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    .line 1099
    iput v9, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .line 1100
    iput-object v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    .line 1102
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->map:Ljava/util/Map;

    .line 1104
    .local v2, "map0":Ljava/util/Map;, "TM;"
    iput-object v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->map:Ljava/util/Map;

    goto :goto_0
.end method

.method public readMessage()Lorg/apache/ignite/plugin/extensions/communication/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/plugin/extensions/communication/Message;",
            ">()TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 936
    iget-boolean v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgTypeDone:Z

    if-nez v2, :cond_3

    .line 937
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    .line 938
    iput-boolean v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 964
    :cond_0
    :goto_0
    return-object v3

    .line 943
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByte()B

    move-result v1

    .line 945
    .local v1, "type":B
    const/16 v2, -0x80

    if-ne v1, v2, :cond_5

    move-object v2, v3

    :goto_1
    iput-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 947
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    if-eqz v2, :cond_2

    .line 948
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgFormatter:Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;

    iget-object v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    invoke-interface {v2, v6}, Lorg/apache/ignite/plugin/extensions/communication/MessageFormatter;->reader(Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;)Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->reader:Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .line 950
    :cond_2
    iput-boolean v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgTypeDone:Z

    .line 953
    .end local v1    # "type":B
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    iget-object v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->reader:Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    invoke-interface {v2, v6, v7}, Lorg/apache/ignite/plugin/extensions/communication/Message;->readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    move v2, v5

    :goto_2
    iput-boolean v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 955
    iget-boolean v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v2, :cond_0

    .line 956
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    .line 958
    .local v0, "msg0":Lorg/apache/ignite/plugin/extensions/communication/Message;
    iput-boolean v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgTypeDone:Z

    .line 959
    iput-object v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msg:Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-object v3, v0

    .line 961
    goto :goto_0

    .line 945
    .end local v0    # "msg0":Lorg/apache/ignite/plugin/extensions/communication/Message;
    .restart local v1    # "type":B
    :cond_5
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->msgFactory:Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;

    invoke-interface {v2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageFactory;->create(B)Lorg/apache/ignite/plugin/extensions/communication/Message;

    move-result-object v2

    goto :goto_1

    .end local v1    # "type":B
    :cond_6
    move v2, v4

    .line 953
    goto :goto_2
.end method

.method public readObjectArray(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 7
    .param p1, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p2, "itemCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 974
    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ne v4, v6, :cond_1

    .line 975
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readInt()I

    move-result v3

    .line 977
    .local v3, "size":I
    iget-boolean v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v4, :cond_0

    move-object v2, v5

    .line 1007
    .end local v3    # "size":I
    :goto_0
    return-object v2

    .line 980
    .restart local v3    # "size":I
    :cond_0
    iput v3, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    .line 983
    .end local v3    # "size":I
    :cond_1
    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ltz v4, :cond_5

    .line 984
    iget-object v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->objArr:[Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 985
    if-eqz p2, :cond_3

    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    :goto_1
    iput-object v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->objArr:[Ljava/lang/Object;

    .line 987
    :cond_2
    iget v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .local v0, "i":I
    :goto_2
    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    if-ge v0, v4, :cond_5

    .line 988
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->read(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/lang/Object;

    move-result-object v1

    .line 990
    .local v1, "item":Ljava/lang/Object;
    iget-boolean v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v4, :cond_4

    move-object v2, v5

    .line 991
    goto :goto_0

    .line 985
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    new-array v4, v4, [Ljava/lang/Object;

    goto :goto_1

    .line 993
    .restart local v0    # "i":I
    .restart local v1    # "item":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->objArr:[Ljava/lang/Object;

    aput-object v1, v4, v0

    .line 995
    iget v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 999
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/lang/Object;
    :cond_5
    iput v6, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readSize:I

    .line 1000
    const/4 v4, 0x0

    iput v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readItems:I

    .line 1001
    iput-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    .line 1003
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->objArr:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 1005
    .local v2, "objArr0":[Ljava/lang/Object;, "[TT;"
    iput-object v5, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->objArr:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public readShort()S
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 723
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 725
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 728
    .local v0, "pos":I
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 730
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result v2

    .line 733
    .end local v0    # "pos":I
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 723
    goto :goto_0
.end method

.method public readShortArray()[S
    .locals 4

    .prologue
    .line 850
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->SHORT_ARR_CREATOR:Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;

    const/4 v1, 0x1

    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->SHORT_ARR_OFF:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readArray(Lorg/apache/ignite/internal/direct/DirectByteBufferStream$ArrayCreator;IJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByteArray()[B

    move-result-object v0

    .line 901
    .local v0, "arr":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readUuid()Ljava/util/UUID;
    .locals 2

    .prologue
    .line 917
    invoke-virtual {p0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->readByteArray()[B

    move-result-object v0

    .line 919
    .local v0, "arr":[B
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToUuid([BI)Ljava/util/UUID;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remaining()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 297
    sget-boolean v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    if-eq v0, p1, :cond_1

    .line 300
    iput-object p1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    .line 303
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Lsun/nio/ch/DirectBuffer;

    .end local p1    # "buf":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    .line 305
    :cond_1
    return-void

    .line 302
    .restart local p1    # "buf":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_3
    sget-wide v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_OFF:J

    goto :goto_1
.end method

.method public writeBitSet(Ljava/util/BitSet;)V
    .locals 1
    .param p1, "val"    # Ljava/util/BitSet;

    .prologue
    .line 544
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeLongArray([J)V

    .line 545
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 8
    .param p1, "val"    # Z

    .prologue
    const/4 v1, 0x1

    .line 430
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 432
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 435
    .local v0, "pos":I
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 437
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 439
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 430
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeBooleanArray([Z)V
    .locals 6
    .param p1, "val"    # [Z

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BOOLEAN_ARR_OFF:J

    array-length v4, p1

    array-length v5, p1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeByte(B)V
    .locals 8
    .param p1, "val"    # B

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 327
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 330
    .local v0, "pos":I
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 332
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 325
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeByteArray([B)V
    .locals 6
    .param p1, "val"    # [B

    .prologue
    .line 445
    if-eqz p1, :cond_0

    .line 446
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_OFF:J

    array-length v4, p1

    array-length v5, p1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeByteArray([BJI)V
    .locals 6
    .param p1, "val"    # [B
    .param p2, "off"    # J
    .param p4, "len"    # I

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    sget-wide v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->BYTE_ARR_OFF:J

    add-long v2, v0, p2

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeChar(C)V
    .locals 8
    .param p1, "val"    # C

    .prologue
    .line 415
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 417
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 420
    .local v0, "pos":I
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    .line 422
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 424
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 415
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeCharArray([C)V
    .locals 6
    .param p1, "val"    # [C

    .prologue
    .line 517
    if-eqz p1, :cond_0

    .line 518
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->CHAR_ARR_OFF:J

    array-length v4, p1

    array-length v0, p1

    shl-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 521
    :goto_0
    return-void

    .line 520
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeCollection(Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V
    .locals 2
    .param p2, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p3, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p1, :cond_6

    .line 624
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->it:Ljava/util/Iterator;

    if-nez v0, :cond_2

    .line 625
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    .line 627
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->it:Ljava/util/Iterator;

    .line 633
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    .line 634
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 635
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    .line 637
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->write(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 639
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v0, :cond_0

    .line 642
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->cur:Ljava/lang/Object;

    goto :goto_1

    .line 645
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->it:Ljava/util/Iterator;

    goto :goto_0

    .line 648
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeDouble(D)V
    .locals 7
    .param p1, "val"    # D

    .prologue
    .line 400
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 402
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 405
    .local v6, "pos":I
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 407
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v6, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 409
    .end local v6    # "pos":I
    :cond_0
    return-void

    .line 400
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeDoubleArray([D)V
    .locals 6
    .param p1, "val"    # [D

    .prologue
    .line 507
    if-eqz p1, :cond_0

    .line 508
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->DOUBLE_ARR_OFF:J

    array-length v4, p1

    array-length v0, p1

    shl-int/lit8 v5, v0, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeFloat(F)V
    .locals 8
    .param p1, "val"    # F

    .prologue
    .line 385
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 387
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 390
    .local v0, "pos":I
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 392
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 394
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 385
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeFloatArray([F)V
    .locals 6
    .param p1, "val"    # [F

    .prologue
    .line 497
    if-eqz p1, :cond_0

    .line 498
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->FLOAT_ARR_OFF:J

    array-length v4, p1

    array-length v0, p1

    shl-int/lit8 v5, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeIgniteUuid(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 1
    .param p1, "val"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 558
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->igniteUuidToBytes(Lorg/apache/ignite/lang/IgniteUuid;)[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByteArray([B)V

    .line 559
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeInt(I)V
    .locals 8
    .param p1, "val"    # I

    .prologue
    .line 355
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 357
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 360
    .local v0, "pos":I
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 362
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 355
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeIntArray([I)V
    .locals 6
    .param p1, "val"    # [I

    .prologue
    .line 477
    if-eqz p1, :cond_0

    .line 478
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->INT_ARR_OFF:J

    array-length v4, p1

    array-length v0, p1

    shl-int/lit8 v5, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 481
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 7
    .param p1, "val"    # J

    .prologue
    .line 370
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 372
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 375
    .local v6, "pos":I
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v4, v6

    add-long/2addr v2, v4

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 377
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v6, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 379
    .end local v6    # "pos":I
    :cond_0
    return-void

    .line 370
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeLongArray([J)V
    .locals 6
    .param p1, "val"    # [J

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .line 488
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->LONG_ARR_OFF:J

    array-length v4, p1

    array-length v0, p1

    shl-int/lit8 v5, v0, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 491
    :goto_0
    return-void

    .line 490
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeMap(Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V
    .locals 3
    .param p2, "keyType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p3, "valType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p4, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz p1, :cond_7

    .line 661
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapIt:Ljava/util/Iterator;

    if-nez v1, :cond_2

    .line 662
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    .line 664
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapIt:Ljava/util/Iterator;

    .line 670
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    sget-object v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    if-eq v1, v2, :cond_6

    .line 673
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    sget-object v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_4

    .line 674
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    .line 676
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    .line 678
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->keyDone:Z

    if-nez v1, :cond_5

    .line 679
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p2, v1, p4}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->write(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 681
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 684
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->keyDone:Z

    .line 687
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p3, v1, p4}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->write(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 689
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 692
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapCur:Ljava/lang/Object;

    .line 693
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->keyDone:Z

    goto :goto_1

    .line 696
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->mapIt:Ljava/util/Iterator;

    goto :goto_0

    .line 699
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeMessage(Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V
    .locals 2
    .param p1, "msg"    # Lorg/apache/ignite/plugin/extensions/communication/Message;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    .line 565
    if-eqz p1, :cond_1

    .line 566
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    :try_start_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->beforeInnerMessageWrite()V

    .line 570
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, p2}, Lorg/apache/ignite/plugin/extensions/communication/Message;->writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    invoke-interface {p2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->afterInnerMessageWrite(Z)V

    .line 581
    :goto_0
    return-void

    .line 573
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->afterInnerMessageWrite(Z)V

    throw v0

    .line 577
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    goto :goto_0

    .line 580
    :cond_1
    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByte(B)V

    goto :goto_0
.end method

.method public writeObjectArray([Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V
    .locals 2
    .param p2, "itemType"    # Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;
    .param p3, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;",
            "Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "arr":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_6

    .line 590
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrIt:Ljava/util/Iterator;

    if-nez v0, :cond_2

    .line 591
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    .line 593
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-nez v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrayIterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrIt:Ljava/util/Iterator;

    .line 599
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrCur:Ljava/lang/Object;

    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    .line 600
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrCur:Ljava/lang/Object;

    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 601
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrCur:Ljava/lang/Object;

    .line 603
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrCur:Ljava/lang/Object;

    invoke-direct {p0, p2, v0, p3}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->write(Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)V

    .line 605
    iget-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v0, :cond_0

    .line 608
    sget-object v0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->NULL:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrCur:Ljava/lang/Object;

    goto :goto_1

    .line 611
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->arrIt:Ljava/util/Iterator;

    goto :goto_0

    .line 614
    :cond_6
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeShort(S)V
    .locals 8
    .param p1, "val"    # S

    .prologue
    .line 340
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 342
    iget-boolean v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 345
    .local v0, "pos":I
    sget-object v1, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->heapArr:[B

    iget-wide v4, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->baseOff:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5, p1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 347
    iget-object v1, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->buf:Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeShortArray([S)V
    .locals 6
    .param p1, "val"    # [S

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 468
    sget-wide v2, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->SHORT_ARR_OFF:J

    array-length v4, p1

    array-length v0, p1

    shl-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeArray(Ljava/lang/Object;JII)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->lastFinished:Z

    .line 471
    :goto_0
    return-void

    .line 470
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeInt(I)V

    goto :goto_0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 537
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByteArray([B)V

    .line 538
    return-void

    .line 537
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeUuid(Ljava/util/UUID;)V
    .locals 1
    .param p1, "val"    # Ljava/util/UUID;

    .prologue
    .line 551
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->uuidToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/direct/DirectByteBufferStream;->writeByteArray([B)V

    .line 552
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
