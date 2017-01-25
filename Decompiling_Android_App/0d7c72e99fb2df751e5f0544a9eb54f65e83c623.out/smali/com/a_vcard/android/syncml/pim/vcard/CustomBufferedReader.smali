.class Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParser_V21.java"


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 964
    return-void
.end method


# virtual methods
.method public getTotalmillisecond()J
    .locals 2

    .prologue
    .line 976
    iget-wide v0, p0, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;->mTime:J

    return-wide v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 969
    .local v4, "start":J
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, "ret":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 971
    .local v0, "end":J
    iget-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;->mTime:J

    sub-long v8, v0, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/a_vcard/android/syncml/pim/vcard/CustomBufferedReader;->mTime:J

    .line 972
    return-object v2
.end method
