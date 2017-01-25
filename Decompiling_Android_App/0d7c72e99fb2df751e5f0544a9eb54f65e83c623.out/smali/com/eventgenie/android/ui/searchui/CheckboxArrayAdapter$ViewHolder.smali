.class Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CheckboxArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mCheckBox:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

.field mExpandImageView:Landroid/widget/ImageView;

.field mIndex:I

.field mLayout:Landroid/widget/LinearLayout;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->this$0:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->this$0:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    # getter for: Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->mItems:Ljava/util/List;
    invoke-static {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->access$000(Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .line 75
    .local v0, "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    iget-object v1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mCheckBox:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->nextState(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->setCheckedValue(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V

    .line 78
    iget-object v1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mCheckBox:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->setState(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V

    .line 79
    iget-object v1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->this$0:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->onCheckboxClick(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->this$0:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->onLayoutClick(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V

    goto :goto_0
.end method
