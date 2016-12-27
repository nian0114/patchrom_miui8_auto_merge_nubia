.class Lcom/android/settings_ex/WallpaperTypeSettings$1;
.super Ljava/lang/Object;
.source "WallpaperTypeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/WallpaperTypeSettings;->populateWallpaperTypes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WallpaperTypeSettings;

.field final synthetic val$prefIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WallpaperTypeSettings;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings_ex/WallpaperTypeSettings$1;->this$0:Lcom/android/settings_ex/WallpaperTypeSettings;

    iput-object p2, p0, Lcom/android/settings_ex/WallpaperTypeSettings$1;->val$prefIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/WallpaperTypeSettings$1;->this$0:Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/WallpaperTypeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WallpaperTypeSettings$1;->val$prefIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method
