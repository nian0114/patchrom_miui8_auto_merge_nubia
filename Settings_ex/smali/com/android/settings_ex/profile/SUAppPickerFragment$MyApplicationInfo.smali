.class Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
.super Ljava/lang/Object;
.source "SUAppPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SUAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/SUAppPickerFragment;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->this$0:Lcom/android/settings_ex/profile/SUAppPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
