.class final Lcom/android/settings_ex/applications/DefaultAppUtils$2;
.super Ljava/util/ArrayList;
.source "DefaultAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/DefaultAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "txt"

    const-string v2, "text/plain"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "log"

    const-string v2, "application/log"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "ppt"

    const-string v2, "application/mspowerpoint"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "ppt"

    const-string v2, "application/ms-powerpoint"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "ppt"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "dps"

    const-string v2, "application/ksdps"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "dps"

    const-string v2, "application/dps"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "dpt"

    const-string v2, "application/dpt"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "potx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "pptm"

    const-string v2, "application/vnd.ms-powerpoint.presentation.macroEnabled.12"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "pptm"

    const-string v2, "application/pptm"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "ppsm"

    const-string v2, "application/vnd.ms-powerpoint.slideshow.macroEnabled.12"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "ppsm"

    const-string v2, "application/ppsm"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "doc"

    const-string v2, "application/msword"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "doc"

    const-string v2, "application/ms-word"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "dot"

    const-string v2, "application/ms-word"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "doc"

    const-string v2, "application/vnd.ms-word"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "wps"

    const-string v2, "application/vnd.ms-works"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "wps"

    const-string v2, "application/kswps"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "wpt"

    const-string v2, "application/wpt"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "docx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "dotx"

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "docm"

    const-string v2, "application/ms-word"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "rtf"

    const-string v2, "text/rtf"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "rtf"

    const-string v2, "text/richtext"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xls"

    const-string v2, "application/msexcel"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xls"

    const-string v2, "application/ms-excel"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xls"

    const-string v2, "application/vnd.ms-excel"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xlt"

    const-string v2, "application/msexcel"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "et"

    const-string v2, "application/kset"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "et"

    const-string v2, "application/et"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "ett"

    const-string v2, "application/ett"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xlsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xltx"

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xlsb"

    const-string v2, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xlsb"

    const-string v2, "application/xlsb"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xlsm"

    const-string v2, "application/vnd.ms-excel.sheet.macroEnabled.12"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xltm"

    const-string v2, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "xml"

    const-string v2, "text/xml"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "pdf"

    const-string v2, "application/pdf"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "pot"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "pps"

    const-string v2, "application/vnd.ms-powerpoint"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "pptx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "ppsx"

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 221
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "potm"

    const-string v2, "application/potm"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "wps"

    const-string v2, "application/wps"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v0, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;

    const-string v1, "rtf"

    const-string v2, "application/rtf"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/applications/DefaultAppUtils$postAndType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/DefaultAppUtils$2;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method
