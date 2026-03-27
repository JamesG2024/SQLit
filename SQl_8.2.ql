{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyMABZ2BbimlYueMRTjB4k9L",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/JamesG2024/SQLit/blob/main/SQl_8.2.ql\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "#### **1. Import Database**\n",
        "\"\"\"\n",
        "\n",
        "# Import file from your system\n",
        "from google.colab import files\n",
        "file = files.upload()\n",
        "\n",
        "##### **2. Connect with SQLite Database*****\n",
        "\n",
        "# Connect with sqlite database\n",
        "# Import necessary libraries\n",
        "import sqlite3\n",
        "\n",
        "database = 'database.sqlite'\n",
        "\n",
        "conn = sqlite3.connect(database)\n",
        "print('Opened data successfully')\n",
        "\n",
        "# Read SQL query for getting all the tables of database into a dataframe\n",
        "# Here SELECT * means select all\n",
        "import pandas as pd\n",
        "tables = pd.read_sql(\"\"\"SELECT *\n",
        "                       FROM sqlite_master\n",
        "                       WHERE type='table';\"\"\", conn)\n",
        "tables"
      ],
      "metadata": {
        "id": "OfUBtLTg94-G"
      },
      "execution_count": null,
      "outputs": []
    }
  ]
}