.class Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$3;
.super Ljava/lang/Object;
.source "MultiEventSelectorActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->setupTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$3;->this$0:Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 276
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 273
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MULTI: onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MULTI: page title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity$3;->this$0:Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;

    # getter for: Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;
    invoke-static {v1}, Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;->access$000(Lcom/eventgenie/android/activities/multievent/MultiEventSelectorActivity;)Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 270
    return-void
.end method
