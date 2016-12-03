.class Lcom/android/phone/NBCallTimersScreen$2;
.super Ljava/lang/Object;
.source "NBCallTimersScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/phone/NBCallTimersScreen$2;->this$0:Lcom/android/phone/NBCallTimersScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBCallTimersScreen$2;->this$0:Lcom/android/phone/NBCallTimersScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NBCallTimersScreen;->showDialog(I)V

    return-void
.end method
