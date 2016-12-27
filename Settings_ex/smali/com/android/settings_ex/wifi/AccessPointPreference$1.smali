.class Lcom/android/settings_ex/wifi/AccessPointPreference$1;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/AccessPointPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AccessPointPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AccessPointPreference;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AccessPointPreference$1;->this$0:Lcom/android/settings_ex/wifi/AccessPointPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AccessPointPreference$1;->this$0:Lcom/android/settings_ex/wifi/AccessPointPreference;

    # getter for: Lcom/android/settings_ex/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/AccessPointPreference;->access$000(Lcom/android/settings_ex/wifi/AccessPointPreference;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->showDetails()V

    .line 117
    return-void
.end method
