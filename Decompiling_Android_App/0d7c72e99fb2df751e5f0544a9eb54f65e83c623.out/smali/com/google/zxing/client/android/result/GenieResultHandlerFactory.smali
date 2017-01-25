.class public final Lcom/google/zxing/client/android/result/GenieResultHandlerFactory;
.super Ljava/lang/Object;
.source "GenieResultHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/result/GenieResultHandlerFactory$1;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeResultHandler(Lcom/google/zxing/client/android/GenieCaptureActivity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/GenieResultHandler;
    .locals 3
    .param p0, "activity"    # Lcom/google/zxing/client/android/GenieCaptureActivity;
    .param p1, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/zxing/client/android/result/GenieResultHandlerFactory;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 34
    .local v0, "result":Lcom/google/zxing/client/result/ParsedResult;
    sget-object v1, Lcom/google/zxing/client/android/result/GenieResultHandlerFactory$1;->$SwitchMap$com$google$zxing$client$result$ParsedResultType:[I

    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 56
    new-instance v1, Lcom/google/zxing/client/android/result/GenieTextResultHandler;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    return-object v1
.end method

.method private static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 1
    .param p0, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    return-object v0
.end method
