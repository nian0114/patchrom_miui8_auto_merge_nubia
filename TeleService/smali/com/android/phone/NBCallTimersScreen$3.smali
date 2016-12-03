.class Lcom/android/phone/NBCallTimersScreen$3;
.super Ljava/lang/Object;
.source "NBCallTimersScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NBCallTimersScreen;->initResetButton(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCallTimersScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/NBCallTimersScreen;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCallTimersScreen$3;->this$0:Lcom/android/phone/NBCallTimersScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, "id":I
    const v3, 0x7f100115

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NBCallTimersScreen$3;->this$0:Lcom/android/phone/NBCallTimersScreen;

    const v4, 0x7f0b033d

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .local v1, "toast":Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x1

    .end local v1    # "toast":Landroid/widget/Toast;
    :cond_0
    return v2
.end method
