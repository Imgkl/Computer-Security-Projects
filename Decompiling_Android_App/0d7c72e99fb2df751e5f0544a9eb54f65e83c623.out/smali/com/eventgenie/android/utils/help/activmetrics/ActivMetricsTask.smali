.class public Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;
.super Landroid/os/AsyncTask;
.source "ActivMetricsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_BETWEEN_CALLS:J = 0x1388L


# instance fields
.field private final mNumberOfCalls:I

.field private final mUserUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "userUUID"    # Ljava/lang/String;
    .param p2, "numberOfCalls"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->mUserUUID:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->mNumberOfCalls:I

    .line 47
    return-void
.end method

.method private static sleep(J)V
    .locals 2
    .param p0, "miliseconds"    # J

    .prologue
    .line 74
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 51
    iget-object v4, p0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->mUserUUID:Ljava/lang/String;

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->mUserUUID:Ljava/lang/String;

    invoke-static {v4}, Lcom/eventgenie/android/utils/help/activmetrics/CRC16;->getCrc16(Ljava/lang/String;)I

    move-result v2

    .line 53
    .local v2, "hash":I
    new-instance v0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;-><init>()V

    .line 57
    .local v0, "amf":Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->mNumberOfCalls:I

    if-ge v3, v4, :cond_0

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ACTIVMETRICSTASK: Sending ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->mNumberOfCalls:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, v2}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;->sniffingDataForActivMetrics(I)V

    .line 60
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ACTIVMETRICSTASK: Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 68
    .end local v0    # "amf":Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsSniffing;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "hash":I
    .end local v3    # "i":I
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method
