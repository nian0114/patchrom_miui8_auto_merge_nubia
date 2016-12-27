.class Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$2;
.super Ljava/lang/Object;
.source "SplitScreenSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$2;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity$2;->this$0:Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/splitscreen/SplitScreenSettingsActivity;->finish()V

    .line 93
    return-void
.end method
