.class Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
.super Ljava/lang/Object;
.source "DualSuppportAppAdpater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/dual/DualSuppportAppAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private dualAppIcon:Landroid/widget/ImageView;

.field private dualAppName:Landroid/widget/TextView;

.field private isDualTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/dual/DualSuppportAppAdpater;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->this$0:Lcom/android/settings_ex/dual/DualSuppportAppAdpater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/dual/DualSuppportAppAdpater;Lcom/android/settings_ex/dual/DualSuppportAppAdpater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater;
    .param p2, "x1"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;-><init>(Lcom/android/settings_ex/dual/DualSuppportAppAdpater;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->isDualTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->isDualTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppName:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ex/dual/DualSuppportAppAdpater$ViewHolder;->dualAppIcon:Landroid/widget/ImageView;

    return-object p1
.end method
