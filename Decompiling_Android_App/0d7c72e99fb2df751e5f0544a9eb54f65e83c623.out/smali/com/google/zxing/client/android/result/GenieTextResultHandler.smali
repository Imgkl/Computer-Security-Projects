.class public final Lcom/google/zxing/client/android/result/GenieTextResultHandler;
.super Lcom/google/zxing/client/android/result/GenieResultHandler;
.source "GenieTextResultHandler.java"


# static fields
.field private static final buttons:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/eventgenie/android/R$string;->button_web_search:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/eventgenie/android/R$string;->button_share_by_email:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/eventgenie/android/R$string;->button_share_by_sms:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/eventgenie/android/R$string;->button_custom_product_search:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->buttons:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/client/android/result/GenieResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->hasCustomProductSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->buttons:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->buttons:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getButtonText(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 50
    sget-object v0, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->buttons:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDisplayTitle()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/eventgenie/android/R$string;->result_text:I

    return v0
.end method

.method public handleButtonPress(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->getResult()Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "text":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->webSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->shareByEmail(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->shareBySMS(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->fillInCustomSearchURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/result/GenieTextResultHandler;->openURL(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
