.class synthetic Lcom/google/zxing/client/android/result/GenieResultHandlerFactory$1;
.super Ljava/lang/Object;
.source "GenieResultHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/result/GenieResultHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$zxing$client$result$ParsedResultType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/zxing/client/result/ParsedResultType;->values()[Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/client/android/result/GenieResultHandlerFactory$1;->$SwitchMap$com$google$zxing$client$result$ParsedResultType:[I

    return-void
.end method
