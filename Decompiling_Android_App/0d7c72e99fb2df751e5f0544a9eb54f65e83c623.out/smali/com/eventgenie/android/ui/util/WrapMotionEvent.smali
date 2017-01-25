.class public Lcom/eventgenie/android/ui/util/WrapMotionEvent;
.super Ljava/lang/Object;
.source "WrapMotionEvent.java"


# instance fields
.field protected final event:Landroid/view/MotionEvent;


# direct methods
.method protected constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    .line 40
    return-void
.end method

.method private static verifyPointerIndex(I)V
    .locals 2
    .param p0, "pointerIndex"    # I

    .prologue
    .line 74
    if-lez p0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pointer index for Donut/Cupcake"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method public static wrap(Landroid/view/MotionEvent;)Lcom/eventgenie/android/ui/util/WrapMotionEvent;
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Lcom/eventgenie/android/ui/util/EclairMotionEvent;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/ui/util/EclairMotionEvent;-><init>(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/VerifyError;
    new-instance v1, Lcom/eventgenie/android/ui/util/WrapMotionEvent;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;-><init>(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    return v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 51
    invoke-static {p1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getX(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 60
    invoke-static {p1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public getY(I)F
    .locals 1
    .param p1, "pointerIndex"    # I

    .prologue
    .line 69
    invoke-static {p1}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->verifyPointerIndex(I)V

    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/util/WrapMotionEvent;->getY()F

    move-result v0

    return v0
.end method
