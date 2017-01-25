.class public Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "GCLinkMovementMethod.java"


# static fields
.field private static linkMovementMethod:Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;

.field private static movementContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;->linkMovementMethod:Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/text/method/MovementMethod;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 63
    sput-object p0, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;->movementContext:Landroid/content/Context;

    .line 64
    sget-object v0, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;->linkMovementMethod:Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 25
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 27
    .local v0, "action":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_1

    .line 28
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 29
    .local v7, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 31
    .local v8, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    sub-int/2addr v7, v9

    .line 32
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 34
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    add-int/2addr v7, v9

    .line 35
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    add-int/2addr v8, v9

    .line 37
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 38
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {v2, v8}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 39
    .local v3, "line":I
    int-to-float v9, v7

    invoke-virtual {v2, v3, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 41
    .local v5, "off":I
    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {p2, v5, v5, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/URLSpan;

    .line 43
    .local v4, "link":[Landroid/text/style/URLSpan;
    array-length v9, v4

    if-eqz v9, :cond_1

    .line 44
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "url":Ljava/lang/String;
    invoke-static {v6}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->isThisValidGenieIntentUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 47
    invoke-static {v6}, Lcom/eventgenie/android/utils/genieintent/GenieIntent;->fromUrl(Ljava/lang/String;)Lcom/eventgenie/android/utils/genieintent/GenieIntent;

    move-result-object v1

    .line 48
    .local v1, "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    sget-object v9, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;->movementContext:Landroid/content/Context;

    sget-object v10, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;->movementContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/eventgenie/android/utils/genieintent/GenieIntentResolver;->resolveIntent(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntent;)Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/eventgenie/android/utils/genieintent/GenieIntentUtils;->processIntentResult(Landroid/content/Context;Lcom/eventgenie/android/utils/genieintent/GenieIntentResult;Z)V

    .line 53
    const/4 v9, 0x1

    .line 59
    .end local v1    # "genieIntent":Lcom/eventgenie/android/utils/genieintent/GenieIntent;
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "link":[Landroid/text/style/URLSpan;
    .end local v5    # "off":I
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :goto_0
    return v9

    .line 55
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "line":I
    .restart local v4    # "link":[Landroid/text/style/URLSpan;
    .restart local v5    # "off":I
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "line":I
    .end local v4    # "link":[Landroid/text/style/URLSpan;
    .end local v5    # "off":I
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_0
.end method
