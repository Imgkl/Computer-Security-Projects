.class public Lcom/eventgenie/android/container/IntentListItem;
.super Ljava/lang/Object;
.source "IntentListItem.java"


# instance fields
.field private final mDrawable:Ljava/lang/Integer;

.field private final mIntent:Landroid/content/Intent;

.field private final mLabel:Ljava/lang/String;

.field private final mLabelResource:I


# direct methods
.method public constructor <init>(ILjava/lang/Integer;Landroid/content/Intent;)V
    .locals 1
    .param p1, "stringResId"    # I
    .param p2, "drawable"    # Ljava/lang/Integer;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/container/IntentListItem;->mLabel:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/eventgenie/android/container/IntentListItem;->mDrawable:Ljava/lang/Integer;

    .line 51
    iput-object p3, p0, Lcom/eventgenie/android/container/IntentListItem;->mIntent:Landroid/content/Intent;

    .line 52
    iput p1, p0, Lcom/eventgenie/android/container/IntentListItem;->mLabelResource:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Intent;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "drawable"    # Ljava/lang/Integer;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/eventgenie/android/container/IntentListItem;->mLabel:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/eventgenie/android/container/IntentListItem;->mDrawable:Ljava/lang/Integer;

    .line 44
    iput-object p3, p0, Lcom/eventgenie/android/container/IntentListItem;->mIntent:Landroid/content/Intent;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/container/IntentListItem;->mLabelResource:I

    .line 46
    return-void
.end method


# virtual methods
.method public getDrawable()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/container/IntentListItem;->mDrawable:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/container/IntentListItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    iget v0, p0, Lcom/eventgenie/android/container/IntentListItem;->mLabelResource:I

    if-lez v0, :cond_0

    .line 57
    iget v0, p0, Lcom/eventgenie/android/container/IntentListItem;->mLabelResource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/container/IntentListItem;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method
