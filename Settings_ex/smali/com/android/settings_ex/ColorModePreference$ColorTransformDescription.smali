.class Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;
.super Ljava/lang/Object;
.source "ColorModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ColorModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorTransformDescription"
.end annotation


# instance fields
.field private colorTransform:I

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private transform:Landroid/view/Display$ColorTransform;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/ColorModePreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/ColorModePreference$1;

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;

    .prologue
    .line 145
    iget v0, p0, Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;->colorTransform:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;
    .param p1, "x1"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;->colorTransform:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;->title:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;->summary:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;)Landroid/view/Display$ColorTransform;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;Landroid/view/Display$ColorTransform;)Landroid/view/Display$ColorTransform;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;
    .param p1, "x1"    # Landroid/view/Display$ColorTransform;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings_ex/ColorModePreference$ColorTransformDescription;->transform:Landroid/view/Display$ColorTransform;

    return-object p1
.end method
