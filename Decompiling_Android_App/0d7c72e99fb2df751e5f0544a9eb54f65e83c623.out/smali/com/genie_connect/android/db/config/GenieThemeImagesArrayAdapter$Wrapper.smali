.class Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;
.super Ljava/lang/Object;
.source "GenieThemeImagesArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wrapper"
.end annotation


# instance fields
.field private image1:Landroid/widget/ImageView;

.field private image2:Landroid/widget/ImageView;

.field private image3:Landroid/widget/ImageView;

.field private image4:Landroid/widget/ImageView;

.field private image5:Landroid/widget/ImageView;

.field private image6:Landroid/widget/ImageView;

.field private image7:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private row:Landroid/view/View;

.field private text1:Landroid/widget/TextView;

.field private text2:Landroid/widget/TextView;

.field private text3:Landroid/widget/TextView;

.field private text4:Landroid/widget/TextView;

.field private text5:Landroid/widget/TextView;

.field private text6:Landroid/widget/TextView;

.field private text7:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 111
    iput-object p1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    .line 92
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image1:Landroid/widget/ImageView;

    .line 93
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image2:Landroid/widget/ImageView;

    .line 94
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image3:Landroid/widget/ImageView;

    .line 95
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image4:Landroid/widget/ImageView;

    .line 96
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image5:Landroid/widget/ImageView;

    .line 97
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image6:Landroid/widget/ImageView;

    .line 98
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image7:Landroid/widget/ImageView;

    .line 100
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text1:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text2:Landroid/widget/TextView;

    .line 102
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text3:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text4:Landroid/widget/TextView;

    .line 104
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text5:Landroid/widget/TextView;

    .line 105
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text6:Landroid/widget/TextView;

    .line 106
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text7:Landroid/widget/TextView;

    .line 108
    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    .line 112
    iput-object p2, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    .line 113
    return-void
.end method


# virtual methods
.method public getImage1()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image1:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->image1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image1:Landroid/widget/ImageView;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image1:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImage2()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image2:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->image2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image2:Landroid/widget/ImageView;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image2:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImage3()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image3:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->image3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image3:Landroid/widget/ImageView;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image3:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImage4()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image4:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->image4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image4:Landroid/widget/ImageView;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image4:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImage5()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image5:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->image5:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image5:Landroid/widget/ImageView;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image5:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImage6()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image6:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->image6:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image6:Landroid/widget/ImageView;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image6:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImage7()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image7:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->image7:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image7:Landroid/widget/ImageView;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->image7:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText1()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text1:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text1:Landroid/widget/TextView;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text1:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText2()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text2:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text2:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text2:Landroid/widget/TextView;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text2:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText3()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text3:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text3:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text3:Landroid/widget/TextView;

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text3:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText4()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text4:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text4:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text4:Landroid/widget/TextView;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text4:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText5()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text5:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text5:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text5:Landroid/widget/TextView;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text5:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText6()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text6:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text6:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text6:Landroid/widget/TextView;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text6:Landroid/widget/TextView;

    return-object v0
.end method

.method public getText7()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text7:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->text7:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text7:Landroid/widget/TextView;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->text7:Landroid/widget/TextView;

    return-object v0
.end method

.method public populateFrom(Ljava/lang/String;)V
    .locals 7
    .param p1, "iconName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mOverrideIcons:Z
    invoke-static {v0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$000(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage1()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mNamespaceToUseForIcons:J
    invoke-static {v2}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$200(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)J

    move-result-wide v2

    const-string/jumbo v5, "white"

    sget-object v6, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/config/IconManager;->getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage2()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mNamespaceToUseForIcons:J
    invoke-static {v2}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$200(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)J

    move-result-wide v2

    const-string v5, "line_white"

    sget-object v6, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/config/IconManager;->getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage3()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mNamespaceToUseForIcons:J
    invoke-static {v2}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$200(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)J

    move-result-wide v2

    const-string v5, "chunky_white"

    sget-object v6, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->GRID:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/config/IconManager;->getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage4()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mNamespaceToUseForIcons:J
    invoke-static {v2}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$200(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)J

    move-result-wide v2

    const-string/jumbo v5, "white"

    sget-object v6, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->TABS:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/config/IconManager;->getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage5()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mNamespaceToUseForIcons:J
    invoke-static {v2}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$200(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)J

    move-result-wide v2

    const-string/jumbo v5, "white"

    sget-object v6, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/config/IconManager;->getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    :goto_0
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getText1()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "def"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getText2()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "line"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getText3()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "chunky"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getText4()Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "tab"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getText5()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage1()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "white"

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_delete:I

    invoke-static {v1, v2, p1, v3}, Lcom/genie_connect/android/db/config/IconManager;->getIconGrid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage2()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "line_white"

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_delete:I

    invoke-static {v1, v2, p1, v3}, Lcom/genie_connect/android/db/config/IconManager;->getIconGrid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage3()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "chunky_white"

    sget v3, Lcom/eventgenie/android/R$drawable;->ic_delete:I

    invoke-static {v1, v2, p1, v3}, Lcom/genie_connect/android/db/config/IconManager;->getIconGrid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 237
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage4()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_delete:I

    invoke-static {v1, v4, p1, v2}, Lcom/genie_connect/android/db/config/IconManager;->getIconTab(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    invoke-virtual {p0}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->getImage5()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter$Wrapper;->this$0:Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;

    # getter for: Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;->access$100(Lcom/genie_connect/android/db/config/GenieThemeImagesArrayAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_delete:I

    invoke-static {v1, v4, p1, v2}, Lcom/genie_connect/android/db/config/IconManager;->getIconList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
