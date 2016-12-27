.class Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;
.super Ljava/lang/Object;
.source "DefaultAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferAppInfo"
.end annotation


# instance fields
.field public name:Landroid/content/ComponentName;

.field public ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/android/settings_ex/applications/DefaultAppManager;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/DefaultAppManager;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V
    .locals 0
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;->this$0:Lcom/android/settings_ex/applications/DefaultAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 111
    iput-object p3, p0, Lcom/android/settings_ex/applications/DefaultAppManager$PreferAppInfo;->name:Landroid/content/ComponentName;

    .line 112
    return-void
.end method
