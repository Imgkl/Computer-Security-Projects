.class public Lorg/apache/ignite/startup/cmdline/AboutDialog;
.super Ljavax/swing/JDialog;
.source "AboutDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final VALUE_BORDER_COLOR:Ljava/awt/Color;

.field private static aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;

.field private static final serialVersionUID:J


# instance fields
.field private final appName:Ljava/lang/String;

.field private final bannerSpec:Ljava/lang/String;

.field private closeAct:Ljavax/swing/Action;

.field private closeBtn:Ljavax/swing/JButton;

.field private final copyright:Ljava/lang/String;

.field private final gbc:Ljava/awt/GridBagConstraints;

.field private final release:Ljava/util/Date;

.field private final ver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/startup/cmdline/AboutDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->$assertionsDisabled:Z

    .line 39
    new-instance v0, Ljava/awt/Color;

    const v1, 0xcdcdcd

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    sput-object v0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->VALUE_BORDER_COLOR:Ljava/awt/Color;

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "bannerSpec"    # Ljava/lang/String;
    .param p3, "ver"    # Ljava/lang/String;
    .param p4, "release"    # Ljava/util/Date;
    .param p5, "copyright"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    .line 85
    new-instance v0, Lorg/apache/ignite/startup/cmdline/AboutDialog$1;

    const-string v1, "Close"

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/startup/cmdline/AboutDialog$1;-><init>(Lorg/apache/ignite/startup/cmdline/AboutDialog;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeAct:Ljavax/swing/Action;

    .line 94
    new-instance v0, Ljavax/swing/JButton;

    iget-object v1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeAct:Ljavax/swing/Action;

    invoke-direct {v0, v1}, Ljavax/swing/JButton;-><init>(Ljavax/swing/Action;)V

    iput-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeBtn:Ljavax/swing/JButton;

    .line 70
    iput-object p1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->appName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->bannerSpec:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->ver:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->release:Ljava/util/Date;

    .line 76
    iput-object p5, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->copyright:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    .line 79
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    const/4 v1, 0x2

    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 81
    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->initDialog()V

    .line 82
    return-void
.end method

.method static synthetic access$000()Lorg/apache/ignite/startup/cmdline/AboutDialog;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/ignite/startup/cmdline/AboutDialog;)Lorg/apache/ignite/startup/cmdline/AboutDialog;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/startup/cmdline/AboutDialog;

    .prologue
    .line 34
    sput-object p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->aboutDlg:Lorg/apache/ignite/startup/cmdline/AboutDialog;

    return-object p0
.end method

.method private addAboutItem(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "c"    # Ljavax/swing/JComponent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/Object;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->addAboutItem(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/Object;Ljavax/swing/border/Border;)V

    .line 254
    return-void
.end method

.method private addAboutItem(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/Object;Ljavax/swing/border/Border;)V
    .locals 9
    .param p1, "c"    # Ljavax/swing/JComponent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "val"    # Ljava/lang/Object;
    .param p4, "border"    # Ljavax/swing/border/Border;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 265
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "v":Ljava/lang/String;
    :goto_0
    const-string v4, "<html><b>%s</b> &#10159; %s</html>"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    aput-object p3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "tip":Ljava/lang/String;
    new-instance v1, Ljavax/swing/JLabel;

    invoke-direct {v1, p2}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 269
    .local v1, "lb":Ljavax/swing/JLabel;
    invoke-virtual {v1, v2}, Ljavax/swing/JLabel;->setToolTipText(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, v3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "field":Ljavax/swing/JLabel;
    invoke-virtual {v0, v7}, Ljavax/swing/JLabel;->setOpaque(Z)V

    .line 273
    sget-object v4, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-virtual {v0, v4}, Ljavax/swing/JLabel;->setBackground(Ljava/awt/Color;)V

    .line 274
    sget-object v4, Lorg/apache/ignite/startup/cmdline/AboutDialog;->VALUE_BORDER_COLOR:Ljava/awt/Color;

    invoke-static {v4, v7}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;I)Ljavax/swing/border/Border;

    move-result-object v4

    invoke-static {v6, v8, v6, v8}, Ljavax/swing/BorderFactory;->createEmptyBorder(IIII)Ljavax/swing/border/Border;

    move-result-object v5

    invoke-static {v4, v5}, Ljavax/swing/BorderFactory;->createCompoundBorder(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)Ljavax/swing/border/CompoundBorder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/swing/JLabel;->setBorder(Ljavax/swing/border/Border;)V

    .line 277
    invoke-virtual {v0, v2}, Ljavax/swing/JLabel;->setToolTipText(Ljava/lang/String;)V

    .line 279
    if-eqz p4, :cond_0

    .line 280
    invoke-virtual {v0, p4}, Ljavax/swing/JLabel;->setBorder(Ljavax/swing/border/Border;)V

    .line 282
    :cond_0
    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbcLicenseLabel()Ljava/awt/GridBagConstraints;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljavax/swing/JComponent;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 283
    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbcLicenseField()Ljava/awt/GridBagConstraints;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljavax/swing/JComponent;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 284
    return-void

    .line 265
    .end local v0    # "field":Ljavax/swing/JLabel;
    .end local v1    # "lb":Ljavax/swing/JLabel;
    .end local v2    # "tip":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/String;
    :cond_1
    const-string v3, "n/a"

    goto :goto_0
.end method

.method public static centerShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 6
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "bannerSpec"    # Ljava/lang/String;
    .param p2, "ver"    # Ljava/lang/String;
    .param p3, "release"    # Ljava/util/Date;
    .param p4, "copyright"    # Ljava/lang/String;

    .prologue
    .line 311
    new-instance v0, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/startup/cmdline/AboutDialog$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-static {v0}, Ljavax/swing/SwingUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 331
    return-void
.end method

.method private createBannerPanel()Ljavax/swing/JPanel;
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 115
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v5, Ljava/awt/FlowLayout;

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-direct {v5, v6, v7, v8}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-direct {v0, v5}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 117
    .local v0, "bannerPanel":Ljavax/swing/JPanel;
    sget-object v5, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-virtual {v0, v5}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 120
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->bannerSpec:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 122
    .local v4, "url":Ljava/net/URL;
    invoke-static {v4}, Ljavax/imageio/ImageIO;->read(Ljava/net/URL;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 124
    .local v1, "image":Ljava/awt/image/BufferedImage;
    new-instance v5, Ljavax/swing/JLabel;

    new-instance v6, Ljavax/swing/ImageIcon;

    invoke-direct {v6, v1}, Ljavax/swing/ImageIcon;-><init>(Ljava/awt/Image;)V

    invoke-direct {v5, v6}, Ljavax/swing/JLabel;-><init>(Ljavax/swing/Icon;)V

    invoke-virtual {v0, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "image":Ljava/awt/image/BufferedImage;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    new-instance v3, Ljavax/swing/JPanel;

    invoke-direct {v3}, Ljavax/swing/JPanel;-><init>()V

    .line 131
    .local v3, "msgPanel":Ljavax/swing/JPanel;
    new-instance v5, Ljavax/swing/BoxLayout;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Ljavax/swing/BoxLayout;-><init>(Ljava/awt/Container;I)V

    invoke-virtual {v3, v5}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 132
    sget-object v5, Ljava/awt/Color;->WHITE:Ljava/awt/Color;

    invoke-virtual {v3, v5}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 134
    new-instance v5, Ljavax/swing/JLabel;

    const-string v6, "<html><b>About Ignite</b></html>"

    invoke-direct {v5, v6}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 135
    invoke-static {v8}, Ljavax/swing/Box;->createVerticalStrut(I)Ljava/awt/Component;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 136
    new-instance v5, Ljavax/swing/JLabel;

    iget-object v6, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->appName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 138
    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 140
    return-object v0

    .line 126
    .end local v3    # "msgPanel":Ljavax/swing/JPanel;
    :catch_0
    move-exception v2

    .line 127
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private createButtonPanel()Ljavax/swing/JPanel;
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeBtn:Ljavax/swing/JButton;

    iget-object v2, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeAct:Ljavax/swing/Action;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setAction(Ljavax/swing/Action;)V

    .line 219
    iget-object v1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeBtn:Ljavax/swing/JButton;

    const-string v2, "<html><b>Closes</b> Dialog</html>"

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 222
    .local v0, "btnPanel":Ljavax/swing/JPanel;
    iget-object v1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeBtn:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 224
    return-object v0
.end method

.method private createLicensePanel()Ljavax/swing/JPanel;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/GridBagLayout;

    invoke-direct {v1}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 205
    .local v0, "licPanel":Ljavax/swing/JPanel;
    invoke-static {}, Ljavax/swing/Box;->createVerticalGlue()Ljava/awt/Component;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbcStrut()Ljava/awt/GridBagConstraints;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 207
    const-string v1, "Version:"

    iget-object v2, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->ver:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->addAboutItem(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string v1, "Release Date:"

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->release:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->addAboutItem(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v1, "Copyright:"

    iget-object v2, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->copyright:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->addAboutItem(Ljavax/swing/JComponent;Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    return-object v0
.end method

.method private gbcLicenseField()Ljava/awt/GridBagConstraints;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 190
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridx:I

    .line 191
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 192
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    iput-wide v2, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 194
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    new-instance v1, Ljava/awt/Insets;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v1, v2, v4, v3, v4}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 196
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    return-object v0
.end method

.method private gbcLicenseLabel()Ljava/awt/GridBagConstraints;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    iput v4, v0, Ljava/awt/GridBagConstraints;->gridx:I

    .line 176
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    const/4 v1, -0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    const/16 v1, 0x11

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 179
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    new-instance v1, Ljava/awt/Insets;

    const/16 v2, 0xa

    const/4 v3, 0x5

    invoke-direct {v1, v4, v2, v3, v4}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 181
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    return-object v0
.end method

.method private gbcSeparator()Ljava/awt/GridBagConstraints;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0xa

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridx:I

    .line 162
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 164
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    new-instance v1, Ljava/awt/Insets;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 166
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    return-object v0
.end method

.method private gbcStrut()Ljava/awt/GridBagConstraints;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 149
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    iput v3, v0, Ljava/awt/GridBagConstraints;->gridx:I

    .line 150
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    iput v3, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 152
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    new-instance v1, Ljava/awt/Insets;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 154
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->gbc:Ljava/awt/GridBagConstraints;

    return-object v0
.end method

.method private initComponents()Ljavax/swing/JPanel;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/BorderLayout;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-direct {v0, v1}, Ljavax/swing/JPanel;-><init>(Ljava/awt/LayoutManager;)V

    .line 104
    .local v0, "content":Ljavax/swing/JPanel;
    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->createBannerPanel()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "North"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->createLicensePanel()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "Center"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->createButtonPanel()Ljavax/swing/JPanel;

    move-result-object v1

    const-string v2, "South"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 108
    return-object v0
.end method

.method private initDialog()V
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->initComponents()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setContentPane(Ljava/awt/Container;)V

    .line 233
    invoke-virtual {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->pack()V

    .line 235
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setDefaultCloseOperation(I)V

    .line 237
    invoke-virtual {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeBtn:Ljavax/swing/JButton;

    invoke-virtual {v0, v1}, Ljavax/swing/JRootPane;->setDefaultButton(Ljavax/swing/JButton;)V

    .line 238
    iget-object v0, p0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->closeAct:Ljavax/swing/Action;

    invoke-direct {p0, v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setEscAction(Ljava/awt/event/ActionListener;)V

    .line 240
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setModal(Z)V

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->setResizable(Z)V

    .line 243
    return-void
.end method

.method private setEscAction(Ljava/awt/event/ActionListener;)V
    .locals 3
    .param p1, "act"    # Ljava/awt/event/ActionListener;

    .prologue
    .line 292
    sget-boolean v0, Lorg/apache/ignite/startup/cmdline/AboutDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 294
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/startup/cmdline/AboutDialog;->getRootPane()Ljavax/swing/JRootPane;

    move-result-object v0

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Ljavax/swing/JRootPane;->registerKeyboardAction(Ljava/awt/event/ActionListener;Ljavax/swing/KeyStroke;I)V

    .line 298
    return-void
.end method
