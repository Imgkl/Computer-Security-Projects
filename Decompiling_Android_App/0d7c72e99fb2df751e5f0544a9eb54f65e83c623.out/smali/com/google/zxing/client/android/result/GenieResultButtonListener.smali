.class public final Lcom/google/zxing/client/android/result/GenieResultButtonListener;
.super Ljava/lang/Object;
.source "GenieResultButtonListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final index:I

.field private final resultHandler:Lcom/google/zxing/client/android/result/GenieResultHandler;


# direct methods
.method public constructor <init>(Lcom/google/zxing/client/android/result/GenieResultHandler;I)V
    .locals 0
    .param p1, "resultHandler"    # Lcom/google/zxing/client/android/result/GenieResultHandler;
    .param p2, "index"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/zxing/client/android/result/GenieResultButtonListener;->resultHandler:Lcom/google/zxing/client/android/result/GenieResultHandler;

    .line 34
    iput p2, p0, Lcom/google/zxing/client/android/result/GenieResultButtonListener;->index:I

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/client/android/result/GenieResultButtonListener;->resultHandler:Lcom/google/zxing/client/android/result/GenieResultHandler;

    iget v1, p0, Lcom/google/zxing/client/android/result/GenieResultButtonListener;->index:I

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/result/GenieResultHandler;->handleButtonPress(I)V

    .line 40
    return-void
.end method
